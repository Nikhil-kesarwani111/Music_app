import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_rock/config/App%20color/app_color.dart';

InputDecoration textFormFieldDecoration() {
  return InputDecoration(
    filled: true,
    fillColor: const Color(0xFF2F2F39),
    isDense: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),

    labelText: 'Search',
    hintText: 'Enter your Music',

    labelStyle: GoogleFonts.syne(
      color: Colors.grey,
      fontSize: 14.sp,
    ),
    hintStyle: GoogleFonts.syne(
      color: Colors.grey,
      fontSize: 14.sp,
    ),

    prefixIcon: Padding(
      padding: EdgeInsets.all(12.w),
      child: Icon(
        Icons.search_rounded,
        color: AppColors.appIconColor,
        size: 20.sp,
      ),
    ),

    suffixIcon: Container(
      padding: EdgeInsets.only(right: 8.w),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Divider
          Container(
            height: 24.h,
            width: 1.w,
            color: Colors.grey[500],
            margin: EdgeInsets.symmetric(horizontal: 8.w),
          ),

          // Mic Icon
          Icon(
            Icons.mic,
            color: AppColors.appIconColor,
            size: 20.sp,
          ),
        ],
      ),
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide.none,
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide(
        color: Colors.grey[500]!,
        width: 2.w,
      ),
    ),
  );
}
