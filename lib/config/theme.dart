import 'package:bmi_cal/config/color.dart';
import 'package:flutter/material.dart';

// set light theme
var lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.light(
      background: LBgColor,
      primary: LPrimaryColor,
      onBackground: LfontColor,
      primaryContainer: LDivlColor,
      onPrimaryContainer: LfontColor,
      onSecondary: LLabelColor,
    ));

// set dart theme
var dartTheme = ThemeData(
    useMaterial3: true,
    colorScheme: const ColorScheme.dark(
      background: DBgColor,
      primary: DPrimaryColor,
      onBackground: DfontColor,
      primaryContainer: DDivColor,
      onPrimaryContainer: DfontColor,
      onSecondary: DLabelColor,
    ));
