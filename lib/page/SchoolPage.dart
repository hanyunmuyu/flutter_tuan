import 'package:flutter/material.dart';
import 'CommunityPage.dart';
import 'SchoolyardPage.dart';
import 'SchoolActivePage.dart';

class SchoolPage extends StatefulWidget {
  @override
  State createState() {
    return new _SchoolPageState();
  }
}

class _SchoolPageState extends State<SchoolPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final List<Tab> myTabs = <Tab>[
    new Tab(
      text: '校园',
    ),
    new Tab(
      text: '动态',
    ),
    new Tab(
      text: '社团',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: ObjectKey("SchoolPage"),
      appBar: new AppBar(
        title: new Container(
          child: new Center(
            child: new TabBar(
              controller: _tabController,
              tabs: myTabs,
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.white,
              labelStyle: new TextStyle(fontSize: 16.0),
              unselectedLabelStyle: new TextStyle(fontSize: 12.0),
            ),
          ),
        ),
        actions: <Widget>[],
      ),
      body: new TabBarView(
        key: ObjectKey('SchoolPage'),
        children: [
          new SchoolyardPage(),
          new SchoolActivePage(),
          new CommunityPage(),
        ],
        controller: _tabController,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController =
        new TabController(length: myTabs.length, initialIndex: 1, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
