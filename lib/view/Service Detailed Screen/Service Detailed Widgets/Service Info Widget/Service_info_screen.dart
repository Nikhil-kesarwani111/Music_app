import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../config/App color/app_color.dart';

class ServiceInfoSection extends StatelessWidget {
  final String title;
  final String description;

  const ServiceInfoSection({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 32.h),
      child: Column(
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.syne(
              fontSize: 20.sp,
              color: AppColors.lightTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.syne(
              fontSize: 14.sp,
              color: AppColors.lightTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
