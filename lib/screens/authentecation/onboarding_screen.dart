import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/cinema.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(120),
            left: ScreenUtil().setWidth(115),
            child: Text(
              "CINEMA",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(35),
              ),
            ),
          ),
          Positioned(
            bottom: ScreenUtil().setHeight(40),
            left: ScreenUtil().setWidth(50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(42),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey)),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(42),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6C600),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
