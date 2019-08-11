import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAboutPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GROUP MEMBERS")),
      body: Container(
        alignment: Alignment.center,
        child: _builtMemberList(),
      ),
    );
  }
}

Widget _builtMemberList() {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Caitlin Lee Shiao Juen'),
        subtitle: Text('B04180020'),
      ),
      Divider(),
      ListTile(
        title: Text('Mohd Syazwan Zulfaris bin Zainal'),
        subtitle: Text('B04180021'),
      ),
      Divider(),
      ListTile(
        title: Text('Izzatul Nur Atiqah Binti Rosslan'),
        subtitle: Text('B04180030'),
      ),
      Divider(),
      ListTile(
        title: Text('Shahrain binti Johan'),
        subtitle: Text('B04180045'),
      ),
      Divider(),
      ListTile(
        title: Text('Adla Fikriyah Binti Ibrahim'),
        subtitle: Text('B02170029'),
      ),
    ],
  );
}
