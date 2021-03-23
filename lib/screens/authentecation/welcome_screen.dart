import 'package:cinema_flutter_app/widgets/static_balls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1C2922),
      body: Stack(
        children: [
          StaticBalls(),
          Positioned(
            left: ScreenUtil().setWidth(110),
            top: ScreenUtil().setHeight(110),
            child: Text(
              'CINEMA',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(40),
              ),
            ),
          ),
          Positioned(
            left: ScreenUtil().setWidth(60),
            top: ScreenUtil().setHeight(200),
            child: Column(
              children: [
                Container(
                  color: Color(0xFF1C2922),
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/ticket.png',
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(250),
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(30),
                ),
                Text(
                  "Ticket",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: ScreenUtil().setSp(22),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: ScreenUtil().setWidth(250),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: ScreenUtil().setSp(16),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
