import 'package:cinema_flutter_app/screens/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(CinemaApp());
}


class CinemaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      allowFontScaling: false,
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cinema App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
          )
        ),
        home: HomePage(),
      ),
    );
  }
}
