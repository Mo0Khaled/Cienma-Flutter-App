import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StaticBalls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: -80,
          child: Container(
            child: CircleAvatar(
              backgroundColor: Color(0xFF17201C),
              radius: 120.w,
            ),
          ),
        ),
        Positioned(
          top: 230.h,
          left: -100.w,
          child: Container(
            child: CircleAvatar(
              backgroundColor: Color(0xFF17201C),
              radius: 130.w,
            ),
          ),
        ),
        Positioned(
          right: -110,
          bottom: 0,
          child: Container(
            child: CircleAvatar(
              backgroundColor: Color(0xFF17201C),
              radius: 110.w,
            ),
          ),
        ),
      ],
    );
  }
}
