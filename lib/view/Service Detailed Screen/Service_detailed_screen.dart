import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../Models/service_model/service_model.dart';
import '../../config/App color/app_color.dart';
import 'Service Detailed Widgets/Service Info Widget/Service_info_screen.dart';
import 'Service Detailed Widgets/rectangle image widget/rectangle_image.dart';

class ServiceDetailScreen extends StatelessWidget {
  final ServiceModel service;

  const ServiceDetailScreen({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    final String title = service.title ?? 'No Title';
    final String description = service.description ?? 'No Description';
    final String backgroundImage = service.backgroundImage ?? '';

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColor, // top
              AppColors.darkColor, // bottom
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20.h),

              // Title
              Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.lobster(
                  fontSize: 34.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: 40.h),

              // Rectangle Image
              RoundedImage(imageUrl: backgroundImage),

              SizedBox(height: 50.h,),

              // disc image
              Container(
                width: 120.w,
                height: 120.w,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage('assets/images/disk.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),



              // Title and Description at bottom
              ServiceInfoSection(
                title: title,
                description: description,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
