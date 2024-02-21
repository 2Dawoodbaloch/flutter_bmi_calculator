import 'package:bmi_cal/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:bmi_cal/page/HomePage.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'bmi_app',
      theme: lightTheme,
      darkTheme: dartTheme,
      home: HomePage(),
    );
  }
}
