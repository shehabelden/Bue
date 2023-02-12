import 'package:bue/style/size/container.dart';
import 'package:bue/style/size/padding.dart';
import 'package:flutter/material.dart';

import '../color_manager/color_manager.dart';
Widget authButton(height,width,text){
  return Padding(
    padding:  EdgeInsets.only(top:PaddingApp.welcomeButton*height),
    child: Container(
      height:Height.bigButton*height,
      width:Width.bigButton*width,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: ColorManager.prime,
        borderRadius: BorderRadius.circular((height*Height.bigButton)/8)
      ),
      child: Text(text,style:const TextStyle(
        color: ColorManager.secondColor,
      ),),
    ),
  );
}