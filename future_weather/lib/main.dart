import 'package:flutter/material.dart';
import 'about_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return Placeholder();

=======
    return Scaffold(
      appBar : AppBar(title: Text("Kuala Lumpur"),
      leading: IconButton(
        icon:Icon(Icons.info),
        onPressed :(){
          Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAboutPage()),
                );
        }
      
      
      ),
      
      ),
      
    );
    
>>>>>>> Stashed changes
  }
  
}

