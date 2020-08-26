import 'package:flutter/material.dart';

Widget customtext(String text, double fontsize) {
  return Text(
    text,
    style: TextStyle(
      fontSize: fontsize,
    ),
  );
}

Widget profile(String imagepath, String name, Size size) {
  return Column(
    children: [
      Container(
        height: size.height * 0.15,
        width: size.height * 0.15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(imagepath), fit: BoxFit.cover)),
      ),
      Spacer(),
      customtext(name, 15)
    ],
  );
}
