import 'package:flutter/material.dart';

import 'buttonstyle/madiembuttonstyle.dart';

Widget mediumButton(double height,double width,text){
  return InkWell(
    onTap: (){
      // function();
    },
    child:mediumButtonStyle(text,height,width) ,
  );
}