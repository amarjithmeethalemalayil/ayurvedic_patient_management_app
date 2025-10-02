import 'package:ayurvedic_patient_management_app/core/theme/app_theme.dart';
import 'package:ayurvedic_patient_management_app/features/splash/presentation/pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AyurvedicPatientManagementApp extends StatelessWidget {
  const AyurvedicPatientManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          home: SplashScreen(),
        );
      },
    );
  }
}
