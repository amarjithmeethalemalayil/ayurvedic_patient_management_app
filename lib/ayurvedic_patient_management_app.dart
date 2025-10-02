import 'package:ayurvedic_patient_management_app/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';

class AyurvedicPatientManagementApp extends StatelessWidget {
  const AyurvedicPatientManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}