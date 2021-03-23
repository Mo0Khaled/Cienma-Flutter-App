import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageCardWidget extends StatelessWidget {
  final String img;

  ImageCardWidget(this.img);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: ScreenUtil().setHeight(150),
          width: ScreenUtil().setWidth(140),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            // image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
          ),
          child: Image.network(img,fit: BoxFit.fill,),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text("Title"),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text("2 May 2019",style: TextStyle(color: Color(0xFFBCBBD5)),),
        ),
      ],
    );
  }
}
