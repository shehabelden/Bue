import '../color_manager/color_manager.dart';
import '../size/container.dart';
import 'package:flutter/material.dart';
Widget staticContainer(height,width,color,image,text){
  return Stack(
    children: [
      Container(
        height: Height.small*height,
        width: Width.small*width,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
            borderRadius: BorderRadius.circular((Height.small*height)/4)
        ),
      ),
      Container(
        height: Height.small*height,
        width: Width.small*width,
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular((Height.small*height)/4)
        ),
      ),
      SizedBox(
        height: Height.small*height,
        width: Width.small*width,
        child: Align(
          alignment: Alignment.center,
          child: Text(text,style: TextStyle(
            fontSize: 18,
            color: ColorManager.secondColor.withOpacity(0.7),
          ),
          ),
        ),
      ),
    ],
  );
}