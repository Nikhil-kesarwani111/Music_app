import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartDecoration extends StatelessWidget {
  final String backgroundImage;

  const CartDecoration({
    super.key,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.r),
      child: Stack(
        children: [
          // Background image
          Image.network(
            backgroundImage,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) {
              return Center(child: Icon(Icons.error));
            },
          ),

          // Dark overlay
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF202126).withOpacity(0.82),
            ),
          ),
        ],
      ),
    );
  }
}
