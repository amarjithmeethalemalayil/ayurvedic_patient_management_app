import 'package:flutter/material.dart';

class AppSpacer extends StatelessWidget {
  final double height;
  const AppSpacer({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height,);
  }
}