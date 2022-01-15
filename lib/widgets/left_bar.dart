import 'package:flutter/material.dart';
import 'package:my_app_1/constants/app_constants.dart';

Widget LeftBar(double barWidth){
  return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20)
            ),
            color: accentHexColor
          )
        )
      ],
      
    );

}