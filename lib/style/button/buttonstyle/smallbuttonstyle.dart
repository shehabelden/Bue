import 'package:bue/style/color_manager/color_manager.dart';
import 'package:bue/style/size/container.dart';
import 'package:flutter/material.dart';
Widget smallButtonStyle(String text,double height,double width){
  return Container(
    width:Width.smallButton*width,
    height: Height.smallButton*height,
    color: ColorManager.secondColor,
    alignment: Alignment.center,
    child: Text(text),
  );
}