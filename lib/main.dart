import 'package:flutter/material.dart';
import 'package:rpm_dashboard/res/theme/light_theme.dart';
import 'package:rpm_dashboard/view/dashboard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPM Dashboard',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: const Dashboard(),
    );
  }
}
