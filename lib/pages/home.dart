// ignore_for_file: deprecated_member_use

import 'package:firebase_database/firebase_database.dart';
import 'package:fitbuddy2/controller/bmicontroller.dart';
import 'package:fitbuddy2/controller/login_controller.dart';
import 'package:fitbuddy2/controller/voiceassistant.dart';
import 'package:fitbuddy2/exercisepage/aclexercise.dart';
import 'package:fitbuddy2/exercisepage/arm.dart';
import 'package:fitbuddy2/exercisepage/back.dart';
import 'package:fitbuddy2/exercisepage/chest.dart';
import 'package:fitbuddy2/exercisepage/leg.dart';
import 'package:fitbuddy2/exercisepage/shoulder.dart';
import 'package:fitbuddy2/pages/profile.dart';
import 'package:fitbuddy2/exercisepage/shoudlerinjuries.dart';
import 'package:fitbuddy2/widgets/bmicard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Get.put(LoginController());
  final VoiceAssistantController _voiceController =
      Get.put(VoiceAssistantController());
  final BMIController _bmiController = Get.put(BMIController());

  late DatabaseReference dbRef;
  String? username;
  String? userage;
  String? userbw;
  String? userbh;

  @override
  void initState() {
    super.initState();
    dbRef = FirebaseDatabase.instance.ref().child('profile').child('user');
    getuserdata();
  }

  getuserdata() async {
    try {
      dbRef.child(controller.getID().toString()).onValue.listen((event) {
        final data = event.snapshot.value as Map?;
        if (data != null) {
          setState(() {
            username = data['name']?.toString();
            userage = data['age']?.toString();
            userbw = data['bw']?.toString();
            userbh = data['bh']?.toString();
          });

          // Update BMI Controller
          _bmiController.height.value = double.tryParse(userbh ?? '0') ?? 0;
          _bmiController.weight.value = double.tryParse(userbw ?? '0') ?? 0;
          _bmiController.calculateBMI();
        }
      });
    } catch (e) {
      print('Error getting data: $e');
    }
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text('Do you want to exit the app?'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: const Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: const Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 50, right: 10, left: 10),
          color: const Color(0xFF121212),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      Get.dialog(ProfilePopup());
                    },
                    icon: Obx(() {
                      if (controller.googleAccount.value?.photoUrl != null) {
                        return CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(
                              controller.googleAccount.value!.photoUrl!),
                        );
                      } else {
                        return Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                          size: 50,
                        );
                      }
                    }),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Selamat datang di FitBuddy! Siap untuk mulai latihan?",
                  style:
                      TextStyle(color: const Color(0xFFBB86FC), fontSize: 24),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "Latihan",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(top: 10, left: 25),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => aclPage()),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 180,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/acl.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Untuk Cidera ACL",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Shoudlerinjuries());
                      },
                      child: Container(
                        height: 150,
                        width: 180,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/shoulder.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Untuk Cidera Bahu",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Chest());
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/chest.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Otot Dada",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Back());
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/back.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Otot Punggung",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Shoulder());
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/shoulder-muscle.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Otot Bahu",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Leg());
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/leg.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Otot Kaki",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 18),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const Arm());
                      },
                      child: Container(
                        height: 150,
                        width: 160,
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 46, 46, 46),
                          borderRadius: BorderRadius.circular(35),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/arm.svg',
                              height: 40,
                              width: 40,
                              color: Colors.white,
                            ),
                            SizedBox(height: 10), // Jarak antara icon dan teks
                            Flexible(
                              child: Text(
                                "Latihan Otot Tangan",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                                textAlign: TextAlign
                                    .center, // Agar teks berada di tengah
                                overflow: TextOverflow
                                    .visible, // Mengizinkan teks melanjutkan ke bawah
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 20, left: 10),
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title for the profile data section
                    Text(
                      "Your Profile Data",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 16), // Space between title and row
                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: Color(0xFF1E1E1E),
                            child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    username ?? '',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "Umur: ${userage ?? ''}",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "TB: ${userbh ?? ''} Cm",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    "BB: ${userbw ?? ''} Kg",
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width: 16), // Space between profile and BMI card
                        Expanded(
                          child: BMICard(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Obx(() => SizedBox(
                          width: 100,
                          height: 100,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              padding: EdgeInsets.all(2.0),
                            ),
                            onPressed: _voiceController.isListening
                                ? _voiceController.stopListening
                                : _voiceController.startListening,
                            child: Icon(
                              _voiceController.isListening
                                  ? Icons.mic_off
                                  : Icons.mic,
                              size: 60,
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
