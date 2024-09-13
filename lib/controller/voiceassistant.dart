import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/exercisepage/aclexercise.dart';
import 'package:fitbuddy2/pages/edit.dart';
import 'package:fitbuddy2/pages/geminichatbot.dart';
import 'package:fitbuddy2/pages/login.dart';
import 'package:fitbuddy2/pages/profile.dart';
import 'package:fitbuddy2/exercisepage/shoudlerinjuries.dart';
import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class VoiceAssistantController extends GetxController {
  final LoginController controller = Get.put(LoginController());
  final SpeechToText _speechToText = SpeechToText();
  final _isListening = false.obs;
  final _recognizedWords = "".obs;
  final _confidenceLevel = 0.0.obs;

  bool get isListening => _isListening.value;
  String get recognizedWords => _recognizedWords.value;
  double get confidenceLevel => _confidenceLevel.value;

  @override
  void onInit() {
    super.onInit();
    _initializeSpeech();
  }

  void _initializeSpeech() async {
    bool available = await _speechToText.initialize();
    if (available) {
      print('Speech recognition available');
    } else {
      print('Speech recognition not available');
    }
  }

  void _onSpeechResult(result) {
    _recognizedWords.value = result.recognizedWords;
    _confidenceLevel.value = result.confidence;

    print('Recognized Words: ${_recognizedWords.value}'); // Debugging output

    // Logika untuk membuka halaman berdasarkan perintah suara
    if (_recognizedWords.value.contains('open ACL exercise')) {
      print('buka back');
      Get.to(() => aclPage());
      stopListening();
      // Ganti '/exercise' dengan rute halaman yang benar
    } else if (_recognizedWords.value.contains('open profile')) {
      Get.dialog(ProfilePopup()); // Menutup halaman saat ini
    } else if (_recognizedWords.value.contains('open shoulder injuries')) {
      Get.to(() => Shoudlerinjuries()); // Menutup halaman saat ini
    } else if (_recognizedWords.value.contains('open edit profile')) {
      Get.to(() => Editdata(
            profileKey: controller.getID() ??
                '', // Menggunakan Google ID sebagai profileKey
          )); // Menutup halaman saat ini
    } else if (_recognizedWords.value.contains('open chat')) {
      Get.to(() => Geminichatbot()); // Menutup halaman saat ini
    } else if (_recognizedWords.value.contains('log out')) {
      controller.logout();
      Get.offAll(() => loginPage()); // Menutup halaman saat ini
    }
  }

  void startListening() {
    _speechToText.listen(
      onResult: (result) {
        _onSpeechResult(result);
      },
      // listenFor: Duration(seconds: 4), // Set duration for listening
    );
    _isListening.value = true;
  }

  void stopListening() async {
    await _speechToText.stop();
    _isListening.value = false;
  }
}
