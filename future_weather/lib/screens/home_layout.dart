import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyWeatherHome extends StatelessWidget {
  static const pages = 5;
  final pageIndexNotifier = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
      controller: PageController(
        initialPage: 0,
      ),
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return _buildPages();
      },
      physics: BouncingScrollPhysics(),
      ),
    );
  }
}

Widget _pageDetails({String detail, Color color}) {
  return Container(
    alignment: AlignmentDirectional.center,
    color: color,
    child: Text(
      '$detail',
      style: TextStyle(fontSize: 50.0, color: Colors.black),
    ),
  );
}

Widget _buildPages(){
  return PageView(
    children: <Widget>[
      _pageDetails(detail: 'Page 1', color: Colors.red),
      _pageDetails(detail: 'Page 2', color: Colors.orange),
      _pageDetails(detail: 'Page 3', color: Colors.yellow[300]),
      _pageDetails(detail: 'Page 4', color: Colors.green[300]),
      _pageDetails(detail: 'Page 5', color: Colors.blue[100]),
    ],
  );
}