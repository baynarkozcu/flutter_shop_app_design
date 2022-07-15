import 'package:flutter/material.dart';

import 'application_theme.dart';

class ThemeManager {
  bool isLightTheme = true;

  final ApplicationTheme _theme = ApplicationTheme();

   ThemeData get theme => isLightTheme ? _theme.lightTheme : _theme.darkTheme;
}
