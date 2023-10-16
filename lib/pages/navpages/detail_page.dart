import 'package:flutter/material.dart';
import 'package:tripapp/pages/navpages/app_buttons.dart';
import 'package:tripapp/widgets/app_large_text.dart';
import 'package:tripapp/widgets/app_text.dart';
import 'package:tripapp/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

var gottenstar = 3;
int selectedindex = -1;

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/img2.jpg"), fit: BoxFit.cover)),
            )),
            Positioned(
                right: 0,
                left: 20,
                top: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Icon(Icons.menu), Icon(Icons.menu)],
                )),
            Positioned(
                top: 340,
                left: 0,
                right: 0,
                child: Container(
                  margin: null,
                  padding: EdgeInsets.all(30),
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.white),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                          text: "Munnar",
                          color: Colors.black,
                        ),
                        AppText(
                          text: "\$ 200",
                          size: 20,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_pin),
                        AppText(text: "Kerala,India")
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(5, (index) {
                            print(index);
                            return Icon(Icons.star,
                                color: gottenstar <= index
                                    ? Colors.black26
                                    : Colors.yellowAccent);
                          }),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("($gottenstar.0)"),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(children: [
                      AppLargeText(
                        text: "People",
                        size: 20,
                      )
                    ]),
                    Row(
                      children: [
                        AppText(text: "Number of people in the group")
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                              5,
                              (index) => InkWell(
                                    onDoubleTap: () {
                                      selectedindex = -1;
                                    },
                                    onTap: () {
                                      setState(() {
                                        selectedindex = index;
                                      });
                                    },
                                    child: AppButtons(
                                      color: selectedindex == index
                                          ? Colors.lightBlue
                                          : Colors.black12,
                                      size: 40,
                                      backgroundcolor: Colors.blue,
                                      bordercolor: Colors.red,
                                      str: (index + 1).toString(),
                                    ),
                                  )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        AppLargeText(
                          text: "Description",
                          size: 20,
                        )
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: AppText(
                          text:
                              "Munnar rises as three mountain streams merge  - Mudrapuzha, Nallathanni and Kundala. 1,600 m above sea level, this hill station was once the summer resort of the erstwhile British Government in South India"),
                    ),
                  ]),
                )),
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: AppButtons(
                      backgroundcolor: Colors.black26,
                      size: 40,
                      bordercolor: Colors.black,
                      isicon: true,
                      icon: Icon(Icons.favorite),
                      str: "a",
                      color: Colors.red,
                    ),
                  ),
                  // Container(
                  //   child: ResponsiveButton(
                  //     width: 10,
                  //   ),
                  // )
                  AppLargeText(
                    text: "book now!-->",
                    color: Colors.redAccent,
                  ),
                  AppButtons(
                    backgroundcolor: Colors.black26,
                    size: 80,
                    bordercolor: Colors.black26,
                    isicon: true,
                    icon: Icon(Icons.navigate_next),
                    str: "a",
                    color: Colors.black26,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
