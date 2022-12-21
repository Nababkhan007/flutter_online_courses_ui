import 'package:flutter/material.dart';
import 'package:online_courses_ui/common/helper/theme_helper.dart';
import 'package:online_courses_ui/view/dashboard/dashboard_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeHelper.lightTheme,
      home: const DashboardView(),
    );
  }
}
