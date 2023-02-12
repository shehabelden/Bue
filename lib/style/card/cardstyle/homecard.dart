import 'package:flutter/material.dart';
Widget homeCardStyle(image,double height,width){
  return Container(
    // height: Height.listPostHeight*height,
    // width:Width.listPostWidth*width,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white,
        width: 0.1,
      ),
      // borderRadius: BorderRadius.circular((Height.listPostHeight*height)/16)
    ),
    alignment: Alignment.center,
    //  child: Image.network(image,
    //   height: Height.listPostHeight*height,
    //   width:Width.listPostWidth*width,
    //   fit: BoxFit.fill,
    // ),
  );
}