import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:bmi_cal/Controllers/themeController.dart';
import 'package:flutter/material.dart';

class MyBaseButton extends StatelessWidget {
  final String BtnName;
  final IconData icon;
  final VoidCallback onPress;
  const MyBaseButton(
      {super.key,
      required this.BtnName,
      required this.icon,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Expanded(
        child: Container(
          child: Container(
            height: 50.0,
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
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
      ),
    );
  }
}
