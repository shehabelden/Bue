import 'package:bue/style/color_manager/color_manager.dart';
import 'package:bue/style/size/container.dart';
import 'package:flutter/material.dart';
Widget mediumButtonStyle(text,height,width){
  return Container(
    height: Height.bigButton*height,
    width: Width.bigButton*width,
    color:ColorManager.prime,
    alignment: Alignment.center,
    child:Text(text,style:const TextStyle(
      color: ColorManager.prime,
    ),),
  );
}