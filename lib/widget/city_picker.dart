import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef void ChangeData(int index);
typedef void UpdateData(List<Map<String, dynamic>> data);

class CityPicker {
  static void showCityPicker(BuildContext context) {
    Navigator.push(
      context,
      new _CityPickerRoute(
          theme: Theme.of(context, shadowThemeOnly: true),
          barrierLabel:
              MaterialLocalizations.of(context).modalBarrierDismissLabel),
    );
  }
}

class _CityPickerRoute<T> extends PopupRoute<T> {
  final ThemeData theme;
  final String barrierLabel;

  _CityPickerRoute({this.theme, this.barrierLabel});

  @override
  Duration get transitionDuration => Duration(milliseconds: 2000);

  @override
  @override
  Color get barrierColor => Colors.black54;

  @override
  bool get barrierDismissible => true;

  AnimationController _animationController;

  @override
  AnimationController createAnimationController() {
    assert(_animationController == null);
    _animationController =
        BottomSheet.createAnimationController(navigator.overlay);
    return _animationController;
  }

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    Widget bottomSheet = new MediaQuery.removePadding(
      removeTop: true,
      context: context,
      child: new _CityPickerWidget(route: this),
    );
    if (theme != null) {
      bottomSheet = new Theme(data: theme, child: bottomSheet);
    }
    return bottomSheet;
  }
}

class _CityPickerWidget extends StatefulWidget {
  final _CityPickerRoute route;

  _CityPickerWidget({
    Key key,
    @required this.route,
  });

  @override
  State createState() {
    return new _CityPickerState();
  }
}

class _CityPickerState extends State<_CityPickerWidget> {
  FixedExtentScrollController fixedExtentScrollController =
      new FixedExtentScrollController();
  Widget _bottomView() {
    return new Container(
      alignment: Alignment.bottomCenter,
      color: Colors.white,
      width: double.infinity,
      height: 300.0,
      child: new Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 40.0,
            width: double.infinity,
            child: new Row(
              children: <Widget>[
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text(
                    '取消',
                    style: new TextStyle(
                        color: Theme.of(context).unselectedWidgetColor),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: new Text(
                    '确定',
                    style: new TextStyle(
                        color: Theme.of(context).unselectedWidgetColor),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          ),
          new Expanded(
            flex: 1,
            child: new _PickerContent(),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new AnimatedBuilder(
        animation: widget.route.animation,
        builder: (BuildContext context, Widget child) {
          return new ClipRect(
            child: new CustomSingleChildLayout(
              delegate: new _BottomPickerLayout(widget.route.animation.value),
              child: new GestureDetector(
                child: new Material(
                  color: Colors.transparent,
                  child: _bottomView(),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _PickerContent extends StatefulWidget {
  @override
  State createState() {
    return new _PickerContentState();
  }
}

class _PickerContentState extends State<_PickerContent> {
  List<Map<String, dynamic>> data = new List<Map<String, dynamic>>();

  @override
  void initState() {
    super.initState();
    data = [
      {
        "id": 1,
        "name": "name1",
        "sub": [
          {
            "id": 1,
            "name": "name11111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 2,
            "name": "name11111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 3,
            "name": "name111111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
        ]
      },
      {
        "id": 1,
        "name": "name1",
        "sub": [
          {
            "id": 1,
            "name": "name11111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 2,
            "name": "name11111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 3,
            "name": "name111111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
        ]
      },
      {
        "id": 1,
        "name": "name222222222",
        "sub": [
          {
            "id": 1,
            "name": "name222222222",
            "sub": [
              {
                "id": 1,
                "name": "333333333",
                "sub": [
                  {
                    "id": 1,
                    "name": "subname11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 2,
            "name": "name11111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
          {
            "id": 3,
            "name": "name111111",
            "sub": [
              {
                "id": 1,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 2,
                "name": "name11111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
              {
                "id": 3,
                "name": "name111111",
                "sub": [
                  {
                    "id": 1,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 2,
                    "name": "name11111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                  {
                    "id": 3,
                    "name": "name111111",
                    "sub": [
                      {"id": 1, "name": "name11111"},
                      {"id": 2, "name": "name11111"},
                      {"id": 3, "name": "name111111"},
                    ]
                  },
                ]
              },
            ]
          },
        ]
      },
    ];
  }

  int index1 = 0, index2 = 0, index3 = 0;

  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new _Picker(
          data: data,
          changeData: (index) {
            setState(() {
              index1 = index;
            });
          },
        ),
        new _Picker(
          data: data[index1]['sub'],
          changeData: (index) {
            setState(() {
              index2 = index;
            });
          },
        ),
        new _Picker(
          data: data[index1]['sub'][index2]['sub'],
        ),
      ],
    );
  }
}

class _Picker extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  final ChangeData changeData;
  final _Picker child;

  _Picker({this.data, this.changeData, this.child});

  @override
  State createState() {
    return new _PickerState();
  }
}

class _PickerState extends State<_Picker> {
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      flex: 1,
      child: new Container(
        margin: const EdgeInsets.all(6.0),
        alignment: Alignment.center,
        child: new CupertinoPicker(
          backgroundColor: Colors.white,
          itemExtent: 30.0,
          onSelectedItemChanged: (index) {
            if (widget.changeData != null) {
              widget.changeData(index);
            }
            if (widget.child != null) {}
          },
          children: widget.data.map((v) {
            return new Container(
              alignment: Alignment.centerLeft,
              width: double.infinity,
              child: new Text(
                v['name'].toString(),
                textScaleFactor: 1.2,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _BottomPickerLayout extends SingleChildLayoutDelegate {
  _BottomPickerLayout(this.progress, {this.itemCount, this.showTitleActions});

  final double progress;
  final int itemCount;
  final bool showTitleActions;

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    double maxHeight = 510.0;

    return new BoxConstraints(
      minWidth: constraints.maxWidth,
      maxWidth: constraints.maxWidth,
      minHeight: 0.0,
      maxHeight: maxHeight,
    );
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    double height = size.height - childSize.height * progress;
    return new Offset(0.0, height);
  }

  @override
  bool shouldRelayout(_BottomPickerLayout oldDelegate) {
    return progress != oldDelegate.progress;
  }
}
