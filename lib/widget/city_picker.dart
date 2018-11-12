import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityPicker {
  static void showCityPicker(BuildContext context) {
    Navigator.push(context, new _CityPickerRoute());
  }
}

class _CityPickerRoute<T> extends PopupRoute<T> {
  @override
  Duration get transitionDuration => Duration(milliseconds: 200);

  @override
  String get barrierLabel {}

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

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      child: new AnimatedBuilder(
        animation: widget.route.animation,
        builder: (BuildContext context, Widget child) {
          return new Text('111');
        },
      ),
    );
  }
}
