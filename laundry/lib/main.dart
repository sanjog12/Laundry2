import 'package:flutter/material.dart';
import 'dart:async';
import 'Pick_drop_ui/Home.dart';
//import 'dart:ui';

void main() => runApp(MyApp());

class MyApp1 extends StatelessWidget{

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
//
//
//
//
//
//
//
//
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class Splash extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SplashState();
  }
}
class SplashState extends State<Splash>{
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),() => {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyApp1()),
      ),
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
//          Image(
//            image: AssetImage("assets/image8.jpg"),
//            fit: BoxFit.cover,
//            color: Colors.black54,
//            colorBlendMode: BlendMode.darken,
//          ),
          Image(
            image: AssetImage("images/laundry image2.jpg"),
            fit: BoxFit.cover,
            color: Colors.black87,
            colorBlendMode: BlendMode.darken,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 90.0),
                child:CircleAvatar(
                  backgroundColor: Colors.black12,
                  radius: 95.0,
                  child: Icon(
                    Icons.local_laundry_service,
                    size: 180.0,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top:30.0),
                  child:Text(
                    "Laundry",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 75.0,fontWeight:FontWeight.bold,fontFamily: 'Allura',fontStyle: FontStyle.italic,color: Colors.white),
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top:200.0),
                child: CircularProgressIndicator(
                  backgroundColor: Colors.blueGrey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 5.0),
                        child: Text(
                          "Services  |",
                          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Allura',fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Status  |",
                          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Allura',fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Location  |",
                          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Allura',fontStyle: FontStyle.italic),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 7.0),
                        child: Text(
                          "Grievance",
                          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Allura',fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
