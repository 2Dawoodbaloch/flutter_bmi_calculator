import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:bmi_cal/Controllers/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PrimaryButton extends StatelessWidget {
  final String BtnName;
  final IconData icon;
  final VoidCallback onPress;
  const PrimaryButton(
      {super.key,
      required this.BtnName,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return InkWell(
      onTap: onPress,
      child: Expanded(
          child: Obx(
        () => Container(
          child: Container(
            height: 50.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: bmiController.Gender.value == BtnName
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(10.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon,
                    color: Theme.of(context).colorScheme.primaryContainer),
                SizedBox(width: 6.0),
                Text(
                  BtnName,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26.0,
                      color: Theme.of(context).colorScheme.background),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
