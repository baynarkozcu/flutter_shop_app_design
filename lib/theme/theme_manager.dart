import 'package:flutter/material.dart';
import 'package:shop_app_design/theme/application_theme.dart';

class ThemeManager {
  bool isLightTheme = true;

  final ApplicationTheme _theme = ApplicationTheme();

   ThemeData get theme => isLightTheme ? _theme.lightTheme : _theme.darkTheme;
}
