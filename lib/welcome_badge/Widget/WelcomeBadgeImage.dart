import 'package:bue/style/Image.dart';
import 'package:flutter/material.dart';
Widget backGround(height){
  return  Container(
    width: double.infinity,
    height: height,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(ImageApp.welcomeImage),
        fit: BoxFit.cover,
      ),
    ),
  );

}