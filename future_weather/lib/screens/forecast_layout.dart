import 'package:flutter/material.dart';

class MyForecastWeather extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
        title: Text('Forecast Weather'),
      ),
      body: _buildForecastList()
    );
  }

}

Widget _buildForecastList(){
  Widget column = Expanded(
    child:Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('DD-MM-YYYY'),
        Icon(Icons.cloud),
        Text('32'),
        Text('26')
      ],
    ),
  );

  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return Card(
        child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  column,
                  column,
                  column,
                  column,
                ],
              ),
            ),
      );
    },

  );
}