import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tripapp/widgets/app_large_text.dart';
import 'package:tripapp/widgets/app_text.dart';
import 'package:tripapp/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ["images/img2.jpg", "images/img3.jpg", "images/img4.jpg"];
  List text = [
    "Easily one of the world's most famous\n hot air balloon rides is over\n Cappadocia's fairy chimney rock formations.",
    "Many mountain towns around the world \ndepend on tourists to support them.\n n.",
    "The most affordable balloon \nrides are group trips, "
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 100, left: 80, right: 20),

                // decoration: const BoxDecoration(color: Colors.red),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "TRIPS"),
                          AppLargeText(
                            text: "let's discover",
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 5,
                            width: 5,
                          ),
                          Container(
                            width: 150,
                            child: AppText(text: text[index]),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ResponsiveButton(
                            width: 100,
                          )
                        ],
                      ),
                      Column(
                        children: List.generate(
                            3,
                            (indexdots) => Container(
                                  margin: EdgeInsets.only(bottom: 8),
                                  width: 8,
                                  height: index == indexdots ? 25 : 8,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.black),
                                )),
                      )
                    ]),
              ),
            );
          }),
    );
  }
}
