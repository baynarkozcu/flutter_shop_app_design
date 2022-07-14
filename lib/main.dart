import 'package:flutter/material.dart';

import 'theme/theme_manager.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Shop App",
      theme: ThemeManager().theme,
      home: const HomePage(),
    );
  }
}
