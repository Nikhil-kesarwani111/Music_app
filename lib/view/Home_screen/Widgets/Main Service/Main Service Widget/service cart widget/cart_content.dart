import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:music_rock/config/App%20color/app_color.dart';


class CartContentRow extends StatelessWidget {
  final String iconImagePath;
  final String title;
  final String description;

  const CartContentRow({
    super.key,
    required this.iconImagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildIconContainer(),
          SizedBox(width: 12.w),
          _buildTextSection(),
          SizedBox(width: 4.w),
          _buildArrowIcon(),
        ],
      ),
    );
  }


  // Icon Container
  Widget _buildIconContainer() {
    return Container(
      width: 47.w,
      height: 47.h,
      decoration: BoxDecoration(
        color: const Color(0xFF2F2F39),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: ClipOval(
          child: Image.network(
            iconImagePath,
            width: 30.w,
            height: 30.h,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return CircularProgressIndicator(strokeWidth: 2);
            },
            errorBuilder: (context, error, stackTrace) {
              return Icon(Icons.error, color: Colors.red);
            },
          ),
        ),
      ),
    );
  }


  // Text Section
  Widget _buildTextSection() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Syne',
              fontWeight: FontWeight.w700,
              fontSize: 14.sp,
              color: AppColors.lightTextColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Syne',
              fontWeight: FontWeight.w400,
              fontSize: 12.5.sp,
              color: AppColors.lightTextColor,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }


  // Arrow Icon
  Widget _buildArrowIcon() {
    return Icon(
      Icons.arrow_right_sharp,
      color: Colors.white,
      size: 28.w,
    );
  }
}
