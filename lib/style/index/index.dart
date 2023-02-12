import 'package:flutter/material.dart';

Widget index(controller,text){
  return TextField(
    controller:controller,
    decoration: InputDecoration(
      labelText:text 
    ),
  );
}