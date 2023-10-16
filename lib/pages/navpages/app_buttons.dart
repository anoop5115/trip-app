import 'package:flutter/material.dart';
import 'package:tripapp/widgets/app_large_text.dart';

class AppButtons extends StatelessWidget {
  final Color color;
  final Color backgroundcolor;
  final double size;
  final Color bordercolor;
  final String str;
  final bool isicon;
  final Icon? icon;
  final Icon? text;
  const AppButtons(
      {Key? key,
      required this.color,
      required this.backgroundcolor,
      required this.bordercolor,
      required this.size,
      required this.str,
      this.icon,
      this.text,
      this.isicon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.all(7),
      width: size,
      height: size,
      alignment: Alignment.center,
      child: isicon == false
          ? AppLargeText(
              text: "$str",
              size: 20,
            )
          : icon,
      decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(20),
          color: color),
    );
  }
}
