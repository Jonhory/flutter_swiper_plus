import 'package:flutter/material.dart';

///border线
borderLine(BuildContext context, {bottom: true, top: false, color: Colors.grey}) {

  BorderSide borderSide = BorderSide(width: 0.5, color: color);
  return Border(
      bottom: bottom ? borderSide : BorderSide.none,
      top: top ? borderSide : BorderSide.none
  );
}

///间距
SizedBox hiSpace({double height: 1, double width: 1}) {
  return SizedBox(height: height, width: width);
}

Widget textWrap({text: "Default", height: 1.0, textAlign: TextAlign.center}) {
  return Container(
      height: height,
      child: Center(
        child: Text(
          text,
          textAlign: textAlign,
        ),
      )
  );
}