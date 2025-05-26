import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_rock/config/App%20color/app_color.dart';

class BookNowButton extends StatelessWidget {
  final VoidCallback onPressed;

  const BookNowButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        fixedSize: Size(99.w, 36.h),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        padding: EdgeInsets.zero,
      ),
      child: Text(
        'Book Now',
        style: GoogleFonts.syne(
          fontSize: 13.sp,
          fontWeight: FontWeight.bold,
          color: AppColors.textColor,
          letterSpacing: 1,
        ),
      ),
    );
  }
}
