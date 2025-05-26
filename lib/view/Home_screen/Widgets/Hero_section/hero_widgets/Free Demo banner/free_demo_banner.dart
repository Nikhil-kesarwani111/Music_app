import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_rock/config/App%20color/app_color.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/Free%20Demo%20banner/free_demo_widget/book_now_button.dart';

class FreeDemoBanner extends StatelessWidget {
  const FreeDemoBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min, // Makes it adapt to its content
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Claim your',
            style: GoogleFonts.syne(
              fontSize: 16.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.lightTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4.h),
          Text(
            'Free Demo',
            style: GoogleFonts.lobster(
              fontSize: 42.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.lightTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.h),
          Text(
            'for custom Music Production',
            style: GoogleFonts.syne(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.lightTextColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 24.h),
          BookNowButton(
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
    );
  }
}
