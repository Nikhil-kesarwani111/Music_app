import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/Free%20Demo%20banner/free_demo_banner.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/disc%20widget/disc_widget.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/header/header.dart';
import 'package:music_rock/view/Home_screen/Widgets/Hero_section/hero_widgets/pianno%20widget/pianno_widget.dart';
import '../../../../config/App color/app_color.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.secondaryColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(15.r),
          bottomRight: Radius.circular(15.r),
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          // Positioned Background Widgets (optional offset)
          Positioned(
            left: 0,
            top: 40.h,
            child: DiskWidget(),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: PiannoWidget(),
          ),

          // Foreground Content
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40.h),
                Header(),
                SizedBox(height: 16.h),
                FreeDemoBanner(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
