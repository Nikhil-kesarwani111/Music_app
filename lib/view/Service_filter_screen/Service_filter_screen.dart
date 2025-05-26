import 'package:flutter/material.dart';
import 'package:music_rock/config/App%20color/app_color.dart';

class ServiceFilterScreen extends StatelessWidget {
  const ServiceFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.secondaryColor,
      body: const Center(
        child: Text("Service Filter Screen UI goes here.",style: TextStyle(color: AppColors.lightTextColor),),
      ),
    );
  }
}
