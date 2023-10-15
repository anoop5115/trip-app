import 'package:flutter/material.dart';

class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;

  ResponsiveButton({Key? key, this.isResponsive = false, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
          width: width,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.black26),
          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              ">>>>",
              style: TextStyle(fontSize: 30, color: Colors.black87),
            )
          ])),
    );
  }
}
