import 'package:bue/style/button/buttonstyle/smallbuttonstyle.dart';
import 'package:flutter/material.dart';
Widget smallButton(text,height,width){
  return InkWell(
    onTap: (){
      // function();
    },
    child:smallButtonStyle(text,height,width),
  );
}