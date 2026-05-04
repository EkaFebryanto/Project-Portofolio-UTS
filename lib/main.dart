import 'package:flutter/material.dart';
import 'package:project_uts_portofolio/config/app_theme.dart';
import 'package:project_uts_portofolio/screens/dashboard.dart';

void main() {
  runApp(const MyPortoApp());
}

class MyPortoApp extends StatelessWidget {
  const MyPortoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyPorto',
      theme: AppTheme.darkTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: const DashboardScreen(),
    );
  }
}
