import 'package:flutter/material.dart';
import 'package:wajdiichhhh/pages/dashboard/dashboard_page.dart';
Widget _defaultHome = const DashboardPage();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{'/' : (context) => _defaultHome}
    );
  }
}

