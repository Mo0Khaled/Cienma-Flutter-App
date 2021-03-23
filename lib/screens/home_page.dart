import 'package:cinema_flutter_app/screens/discover_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final tabs = [
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen(),
    DiscoverScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17201C),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: ScreenUtil().setHeight(80),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Discover",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: ScreenUtil().setSp(19),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
            tabs[_currentIndex]
          ],
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Color(0xFFBCBBD5),
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assistant_navigation),
            label: "Discover",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outline),
            label: "Upcoming",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: "Watchlist",
            backgroundColor: Colors.amber,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.amber,
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
