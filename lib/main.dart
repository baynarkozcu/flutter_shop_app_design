import 'package:flutter/material.dart';

import 'core/theme/theme_manager.dart';
import 'feature/views/home_page.dart';
import 'feature/views/onboaring_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "NarkHouse Shop App",
      theme: ThemeManager().theme,
      home: const OnboardingPage(),
    );
  }
}
