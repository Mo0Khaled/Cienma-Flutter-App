import 'package:cinema_flutter_app/widgets/image_card_widget.dart';
import 'package:cinema_flutter_app/widgets/swipe_images_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screen_util.dart';


class DiscoverScreen extends StatelessWidget {
  final List<String> images = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 1),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(25),
              topLeft: Radius.circular(25),
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Now Playing",
                      style: TextStyle(
                        fontSize: ScreenUtil().setSp(15),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SwipeImagesWidget(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("All Movies"),
                      ],
                    ),
                  ),
                  Container(
                    height: ScreenUtil().setHeight(200),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: images.length,
                      itemBuilder: (context, index) => Row(
                        children: [
                          ImageCardWidget(
                            images[index],
                          ),
                          SizedBox(width: 10,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Movies in This Week"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 5, vertical: 10),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: images.length,
                      gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5.0,
                        mainAxisSpacing: 5.0,
                        childAspectRatio: 0.5,
                      ),
                      itemBuilder: (BuildContext context, int index) =>
                          ImageCardWidget(images[index]),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
