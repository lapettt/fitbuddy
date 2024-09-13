import 'package:get/get.dart';

class BMIController extends GetxController {
  var height = 0.0.obs; // Tinggi badan dalam cm
  var weight = 0.0.obs; // Berat badan dalam kg
  var bmi = 0.0.obs;
  var category = ''.obs;

  void calculateBMI() {
    if (height.value > 0 && weight.value > 0) {
      // Menghitung BMI
      double heightInMeters = height.value / 100;
      bmi.value = weight.value / (heightInMeters * heightInMeters);

      // Menentukan kategori berat badan
      if (bmi.value < 18.5) {
        category.value = 'Underweight';
      } else if (bmi.value < 24.9) {
        category.value = 'Normal weight';
      } else if (bmi.value < 29.9) {
        category.value = 'Overweight';
      } else {
        category.value = 'Obesity';
      }
      ;
    } else {
      bmi.value = 0.0;
      category.value = 'Invalid';
    }
  }
}
