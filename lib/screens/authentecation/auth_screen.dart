import 'package:cinema_flutter_app/widgets/static_balls.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';

class AuthenticationScreen extends StatefulWidget {
  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

enum AuthMode { signUp, LogIn }

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();
  AuthMode _authMode = AuthMode.LogIn;

  void _switchMode() {
    if (_authMode == AuthMode.LogIn) {
      setState(() {
        _authMode = AuthMode.signUp;
      });
      // _controller.forward();
    } else {
      setState(() {
        _authMode = AuthMode.LogIn;
      });
      // _controller.reverse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF1C2922),
      body: Stack(
        children: [
          StaticBalls(),
          Positioned(
            left: ScreenUtil().setWidth(127),
            top: ScreenUtil().setHeight(110),
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: ScreenUtil().setSp(30),
              ),
            ),
          ),
          Positioned(
            top: ScreenUtil().setHeight(230),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Container(
                width: ScreenUtil().setWidth(300),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      if (_authMode == AuthMode.signUp)
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Name",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty) return "Please Enter Your Name";
                            return null;
                          },
                        ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty) return "Please Enter Your Email";
                          if (!value.contains('@'))
                            return "Please Enter Valid Email";
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Password",
                          labelStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                        ),
                        validator: (value) {
                          if (value.isEmpty)
                            return "Please Enter Your Password";
                          if (value.length < 6)
                            return "Your Password is too weak";
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      if (_authMode == AuthMode.signUp)
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: "Re-type Password",
                            labelStyle: TextStyle(color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                          validator: (value) {
                            if (value.isEmpty)
                              return "Please Enter Your Password Again";
                            return null;
                          },
                        ),
                    ],
                  ),
                ),
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
                  onTap: () {},
                  child: Container(
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(42),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6C600),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Text(
                      "${_authMode == AuthMode.LogIn ? 'Sign In' : 'Sign Up'}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: ScreenUtil().setSp(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: _switchMode,
                  child: Container(
                    width: ScreenUtil().setWidth(250),
                    height: ScreenUtil().setHeight(42),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      "${_authMode == AuthMode.LogIn ? 'Sign Up' : 'Sign In'}",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(16),
                        color: Colors.white
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
