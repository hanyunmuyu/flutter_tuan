import 'package:flutter/material.dart';
import 'UserPage.dart';
import 'MessagePage.dart';
import 'ExplorePage.dart';
import 'SchoolPage.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainPageState();
  }
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new MessagePage(),
          new SchoolPage(),
          new ExplorePage(),
          new UserPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.sms), title: new Text('消息')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.school), title: new Text('高校')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.explore), title: new Text('发现')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.person), title: new Text('我的'))
        ],
        onTap: onTap,
        currentIndex: page,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = new PageController(initialPage: this.page);
  }

  void onPageChanged(int page) {
    setState(() {
      this.page = page;
    });
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 3), curve: Curves.linear);
  }
}
