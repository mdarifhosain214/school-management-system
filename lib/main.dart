import 'package:flutter/material.dart';
import 'package:school_management_system_app/home/home_screen.dart';
import 'package:school_management_system_app/utils/theme_manager.dart';
import 'package:school_management_system_app/view/desktop/admission.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ASM-APP',
      debugShowCheckedModeBanner: false,
      theme: getApplicationTheme(),
       home:AdmissionForm() //const HomeScreen()
    );
  }
}

