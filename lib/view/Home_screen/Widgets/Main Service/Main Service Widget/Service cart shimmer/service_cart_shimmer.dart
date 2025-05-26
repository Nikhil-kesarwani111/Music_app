import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServiceCartShimmer extends StatelessWidget {
  const ServiceCartShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final baseColor = const Color(0xFF2C2C2E); // Dark grey
    final highlightColor = Colors.grey[100]!;  // Light shimmer
    final blockColor = Colors.grey[800]!;      // Medium grey

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
      child: Shimmer.fromColors(
        baseColor: baseColor,
        highlightColor: highlightColor,
        child: Container(
          height: 120.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: blockColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(51), // 0.2 * 255
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          padding: EdgeInsets.all(16.r),
          child: Row(
            children: [
              // Image Placeholder
              Container(
                height: 64.h,
                width: 64.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(width: 16.w),
              // Text Placeholders
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 16.h,
                      width: double.infinity,
                      color: Colors.grey[600],
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      height: 12.h,
                      width: 140.w,
                      color: Colors.grey[500],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
