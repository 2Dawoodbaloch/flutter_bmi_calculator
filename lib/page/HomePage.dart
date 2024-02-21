import 'package:bmi_cal/Components/AgeSecondary.dart';
import 'package:bmi_cal/Components/HieghtSecondary.dart';
import 'package:bmi_cal/Components/ThemeChangeBtn.dart';
import 'package:bmi_cal/Components/WeightSecondary.dart';
import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:bmi_cal/Controllers/themeController.dart';
import 'package:bmi_cal/Components/PrimaryButton.dart';
import 'package:bmi_cal/Components/my_base_btn.dart';
import 'package:bmi_cal/config/color.dart';
import 'package:bmi_cal/page/result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    BmiController bmiController = Get.put(BmiController());
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ThemeChangeButton(),
              SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 16.0),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    'BMI Calculator',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PrimaryButton(
                      icon: Icons.male,
                      BtnName: 'MALE',
                      onPress: () {
                        bmiController.BmiHandle('MALE');
                      }),
                  SizedBox(width: 16.0),
                  PrimaryButton(
                      icon: Icons.female,
                      BtnName: 'FEMALE',
                      onPress: () {
                        bmiController.BmiHandle('FEMALE');
                      }),
                ],
              ),
              SizedBox(height: 16.0),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSecondary(),
                    SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        children: [
                          WeightSecondary(),
                          SizedBox(height: 30.0),
                          AgeSecondary(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 12),
              SizedBox(
                height: 60.0,
                child: MyBaseButton(
                    icon: Icons.done,
                    BtnName: 'Lets Go',
                    onPress: () {
                      Get.to(ResultPage());
                      bmiController.BmiCalculate();
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
