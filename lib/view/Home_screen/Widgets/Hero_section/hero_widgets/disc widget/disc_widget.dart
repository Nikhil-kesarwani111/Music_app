import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiskWidget extends StatelessWidget {
  const DiskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      left: -40.w,
      child: Image.asset(
        'assets/images/disk.png',
        width: 120.w,
      ),
    );
  }
}
