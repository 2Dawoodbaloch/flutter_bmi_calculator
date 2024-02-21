import 'package:bmi_cal/Controllers/BmiController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HeightSecondary extends StatelessWidget {
  const HeightSecondary({super.key});
  @override
  Widget build(BuildContext context) {
    BmiController bmiController = Get.put(BmiController());
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(12.0)),
        child: Column(
          children: [
            Text(
              'Height(CM)',
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).colorScheme.onSecondaryContainer,
              ),
            ),
            Expanded(
              child: Obx(
                () => SfSlider.vertical(
                  min: 50,
                  max: 250.0,
                  value: bmiController.heightVale.value,
                  interval: 25,
                  showTicks: true,
                  showLabels: true,
                  enableTooltip: true,
                  minorTicksPerInterval: 1,
                  onChanged: (dynamic value) {
                    bmiController.heightVale.value = value;
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
