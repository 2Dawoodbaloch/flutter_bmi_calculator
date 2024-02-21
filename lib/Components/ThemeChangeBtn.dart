import 'package:bmi_cal/Controllers/themeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeChangeButton extends StatelessWidget {
  const ThemeChangeButton({super.key});
  @override
  Widget build(BuildContext context) {
    ThemeController themeController = Get.put(ThemeController());
    return InkWell(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 7),
              height: 50.0,
              width: 120.0,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      themeController.changeTheme();
                    },
                    icon: const Icon(Icons.dark_mode),
                  ),
                  IconButton(
                      onPressed: () {
                        themeController.changeTheme();
                      },
                      icon: const Icon(Icons.light_mode)),
                ],
              ))
        ],
      ),
    );
  }
}
