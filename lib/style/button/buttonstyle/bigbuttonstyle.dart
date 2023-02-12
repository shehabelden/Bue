import 'package:bue/style/size.dart';
import 'package:flutter/material.dart';

import '../../colormanger.dart';
Widget bigButtonStyle(text,height,width){
  return Container(
    alignment: Alignment.center,
    width: Width.bigButtonWidth*width,
    height:Height.bigButtonHeight*height,
    color:Colors.black,
    child:Text(text,
    style:const TextStyle(
      color: ColorManager.scondry,

    ),
    ),
  );
}