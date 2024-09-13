// lib/widgets/bmi_card.dart
import 'package:fitbuddy2/controller/bmicontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BMICard extends StatelessWidget {
  final BMIController _bmiController =
      Get.find<BMIController>(); // Access BMIController

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFF1E1E1E),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "BMI: ${_bmiController.bmi.value.toStringAsFixed(1)}",
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Kategori: ${_bmiController.category.value}",
                style: const TextStyle(color: Colors.white),
              ),
            ],
          );
        }),
      ),
    );
  }
}
