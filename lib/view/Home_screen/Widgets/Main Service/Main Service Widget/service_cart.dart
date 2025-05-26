import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_rock/view/Home_screen/Widgets/Main%20Service/Main%20Service%20Widget/service%20cart%20widget/cart_content.dart';
import 'package:music_rock/view/Home_screen/Widgets/Main%20Service/Main%20Service%20Widget/service%20cart%20widget/cart_decoration.dart';

class ServiceCart extends StatelessWidget {
  final String backgroundImage;
  final String iconImagePath;
  final String title;
  final String description;

  const ServiceCart({
    super.key,
    required this.backgroundImage,
    required this.iconImagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: Container(
        height: 67.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: const Color(0xFF2C2D31),
            width: 1.w,
          ),
        ),
        child: Stack(
          children: [
            CartDecoration(backgroundImage: backgroundImage),
            CartContentRow(iconImagePath: iconImagePath,
                title: title,
                description: description)

          ],
        ),
      ),
    );
  }
}