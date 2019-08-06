import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyWeatherPage(),
    );
  }
}

class MyWeatherPage extends StatefulWidget {
  @override
  _MyWeatherPageState createState() => _MyWeatherPageState();
}

class _MyWeatherPageState extends State<MyWeatherPage> {
  final _pageController = PageController();
  final _currentPageNotifer = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: null,
    );
  }
}

// class PageBuilds extends StatelessWidget {
//   final PageController controller = new PageController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: new Container(
//         padding: EdgeInsets.only(top: 16.0),
//         decoration: new BoxDecoration(color: Colors.black),
//         child: Stack(
//           alignment: FractionalOffset.topCenter,
//           children: <Widget>[
//             new PageView(
//               children: <Widget>[
//                 Center(child: Text("Kuala Lumpur")),
//                 Center(child: Text("Selangor")),
//                 Center(child: Text("Paris"))
//               ],
//               controller: controller,
//             ),
//             new Container(
//               margin: EdgeInsets.only(top:16.0, bottom:16.0),
//             ),
//             CircularIndicator(
//               controller, 3, 6.0, Colors.black, Colors.white)
//             ),
//           ],
//         ),
//       );
    
//   }
// }
