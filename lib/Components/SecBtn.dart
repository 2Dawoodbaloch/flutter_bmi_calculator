import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecBtn extends StatelessWidget {
  final IconData icon;
  final VoidCallback onpress;
  const SecBtn({super.key, required this.icon, required this.onpress});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpress,
      child: Container(
        padding: const EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10.0)),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
