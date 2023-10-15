import 'package:flutter/material.dart';
import 'package:tripapp/widgets/app_large_text.dart';
import 'package:tripapp/widgets/app_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

List images = ["images/img2.jpg", "images/img3.jpg", "images/img4.jpg"];

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.menu,
                  size: 30,
                  color: Colors.black87,
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/profile.jpg")),
                      color: Colors.grey.withOpacity(.5)),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover"),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: TabBar(
              labelColor: Colors.black,
              controller: _tabController,
              unselectedLabelColor: Colors.black45,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              indicator: circleTabIndicator(radius: 4),
              tabs: [
                Tab(
                  text: "places",
                ),
                Tab(
                  text: "inspirations",
                ),
                Tab(
                  text: "emotions",
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: TabBarView(controller: _tabController, children: [
              ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.only(right: 20),
                    height: 300,
                    width: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/img2.jpg"))),
                  );
                },
              ),
              Tab(
                text: "place",
              ),
              Tab(
                text: "place",
              )
            ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppLargeText(
                  text: "Explore more",
                  size: 20,
                ),
                AppText(text: "See all")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 100,
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 20),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 30, top: 20),
                          height: 60,
                          width: 80,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("images/img2.jpg"),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black.withOpacity(.5)),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 30),
                          child: AppText(
                            text: "kayaking",
                            color: Colors.red,
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class circleTabIndicator extends Decoration {
  @override
  final Color color;
  final double radius;
  circleTabIndicator({this.color = Colors.black54, required this.radius});
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _circlePainter(color: color, radius: radius);
  }
}

class _circlePainter extends BoxPainter {
  @override
  final Color color;
  double radius;
  _circlePainter({this.color = Colors.black54, required this.radius});
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint = Paint();
    _paint.color = color;
    _paint.isAntiAlias = true;
    final Offset cicleoffset = Offset(
        configuration.size!.width / 2, configuration.size!.height - radius);
    // TODO: implement paint
    canvas.drawCircle(offset + cicleoffset, radius, _paint);
  }
}
