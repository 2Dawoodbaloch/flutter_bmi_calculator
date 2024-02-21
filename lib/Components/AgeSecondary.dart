import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:bmi_cal/Components/SecBtn.dart';
import 'package:get/get.dart';

class AgeSecondary extends StatelessWidget {
  const AgeSecondary({super.key});
  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Age',
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.bold)),
            ],
          ),
          SizedBox(height: 6.0),
          Column(
            children: [
              Obx(
                () => Text(
                  '${bmiController.ageValue}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                    fontSize: 100.0,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecBtn(
                  icon: Icons.add,
                  onpress: () {
                    bmiController.ageValue.value++;
                  }),
              SecBtn(
                  icon: Icons.minimize,
                  onpress: () {
                    bmiController.ageValue.value--;
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
