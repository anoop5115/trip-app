import 'package:flutter/material.dart';
import 'package:tripapp/pages/navpages/bar_item_page.dart';
import 'package:tripapp/pages/navpages/home_page.dart';
import 'package:tripapp/pages/navpages/my_page.dart';
import 'package:tripapp/pages/navpages/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

List pages = [HomePage(), BarItemPage(), SearchPage(), MyPage()];
int currentindex = 0;

class _MainPageState extends State<MainPage> {
  @override
  onTap(var index) {
    setState(() {
      currentindex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        // backgroundColor: Colors.red,
        currentIndex: currentindex,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: true,
        elevation: 0,

        items: [
          BottomNavigationBarItem(label: "home", icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: "bar", icon: Icon(Icons.bar_chart_sharp)),
          BottomNavigationBarItem(label: "serach", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "my", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
