import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BmiController extends GetxController {
  RxString Gender = "MALE".obs;
  RxInt weightValue = 70.obs;
  RxInt ageValue = 12.obs;
  RxDouble heightVale = 100.0.obs;
  RxDouble bmiValue = 0.0.obs;
  RxString bmiTemp = "".obs;
  RxString bmiStatus = "".obs;
  Rx<Color> colorStatus = Color(0xff246AFE).obs;

  void BmiCalculate() {
    var Hmeter = heightVale / 100;
    bmiValue.value = weightValue / (Hmeter * Hmeter);
    bmiTemp.value = bmiValue.value.toStringAsFixed(1);
    bmiValue.value = double.parse(bmiTemp.value);
    FindStatus();
    print(bmiValue);
  }

  void FindStatus() {
    if (bmiValue.value < 18.5) {
      bmiStatus.value = 'UnderWeight';
      colorStatus.value = Color(0xffFFB800);
    }
    if (bmiValue.value > 18.5 && bmiValue < 24.9) {
      bmiStatus.value = 'Normal';
      colorStatus.value = Color.fromARGB(255, 3, 105, 25);
    }
    if (bmiValue.value > 25.0 && bmiValue < 29.9) {
      bmiStatus.value = 'OverWeight';
      colorStatus.value = Color.fromARGB(255, 172, 47, 99);
    }
    if (bmiValue.value > 30.0 && bmiValue < 34.9) {
      bmiStatus.value = 'OBESE';
      colorStatus.value = Color.fromARGB(255, 162, 5, 5);
    }
    if (bmiValue.value > 35.0) {
      bmiStatus.value = 'Extremely OBESE';
      colorStatus.value = Color.fromARGB(255, 10, 8, 1);
    }
  }

  void BmiHandle(String gender) {
    Gender.value = gender;
  }
}
