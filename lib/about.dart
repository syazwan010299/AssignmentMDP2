
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
    


class MyAboutPage extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("STUDENTS' DETAILS")),
      body: BodyLayout(),
    );  
  }

}
class BodyLayout extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return _myListView(context);
      }
    }

     Widget _myListView(BuildContext context) {
      return ListView(
        children: <Widget>[
          ListTile(
            title: Text('CAITLIN LEE SHIAO JUEN  (B04180020)'),
          ),
          ListTile(
            title: Text('IZZATUL NUR ATIQAH BT ROSSLAN (B04180020)'),
          ),
          ListTile(
            title: Text('SHAHRAIN BINTI JOHAN (B04180020)'),
          ),
          ListTile(
            title: Text('ADLA FIKRIYAH BINTI IBRAHIM (B04180029)'),
          ),
          ListTile(
            title: Text('MOHD SYAZWAN ZULFARIS BIN ZAINAL (B04180020)'),
          ),
        ],
      );
    }
  