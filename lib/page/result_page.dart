import 'package:bmi_cal/Components/my_base_btn.dart';
import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.arrow_back_ios_new),
                SizedBox(width: 6.0),
                Text(
                  'Back',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Obx(
                  () => Text(
                    'Your BMI IS',
                    style: TextStyle(
                        color: bmiController.colorStatus.value,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.0),
            Container(
              height: 350,
              child: Expanded(
                child: Obx(
                  () => CircularPercentIndicator(
                    animationDuration: 1000,
                    radius: 140.0,
                    lineWidth: 30.0,
                    animation: true,
                    percent: bmiController.bmiValue.value / 100,
                    footer: Text(
                      '${bmiController.bmiStatus.value}',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: bmiController.colorStatus.value),
                    ),
                    circularStrokeCap: CircularStrokeCap.round,
                    center: new Text(
                      "${bmiController.bmiValue.value}%",
                      style: TextStyle(
                          fontSize: 45.0,
                          fontWeight: FontWeight.bold,
                          color: bmiController.colorStatus.value),
                    ),
                    progressColor: bmiController.colorStatus.value,
                    backgroundColor:
                        bmiController.colorStatus.value.withOpacity(0.2),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(12.0)),
              child: Text(
                'Your Bmi weight  is between normalCircle percent indicatorLinear percent indicatorToggle animationCustom duration of the animationProgress based on a percentage valueProgress and background colorCustom size Left',
                style: TextStyle(fontSize: 16.0, letterSpacing: 2.0),
              ),
            ),
            SizedBox(height: 30),
            MyBaseButton(
                BtnName: 'Find More',
                icon: Icons.arrow_back_ios_new,
                onPress: () {
                  Get.back();
                })
          ],
        ),
      ),
    ));
  }
}
