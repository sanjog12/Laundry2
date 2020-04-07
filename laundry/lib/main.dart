import 'package:flutter/material.dart';
import 'Pick_drop_ui/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
	    title: "Laundy -beta",
	    theme: ThemeData(
        canvasColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white
      ),
	    home: Homepage_p(),
    );
  }
	
}