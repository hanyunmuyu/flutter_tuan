import 'package:flutter/material.dart';
import 'UserPage.dart';
import 'HomePage.dart';
import 'ExplorePage.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MainPageWidget();
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MainPageState();
  }
}

class MainPageState extends State<MainPageWidget>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  int page = 1;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: <Widget>[
          new HomePage(),
          new ExplorePage(),
          new UserPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(Icons.home), title: new Text('首页')),
          new BottomNavigationBarItem(
              icon: new Icon(Icons.explore), title: new Text('动态')),
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
