import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PiannoWidget extends StatelessWidget {
  const PiannoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20.h,
      right: -40.w,
      child: Image.asset(
        'assets/images/pianno.png',
        width: 130.w,
      ),
    );
  }
}
