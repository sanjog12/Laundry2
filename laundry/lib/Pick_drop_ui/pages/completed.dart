import 'package:flutter/material.dart';

class Completed extends StatefulWidget{
	@override
	State<StatefulWidget> createState() {
		// TODO: implement createState
		return _completed();
	}
}

class _completed extends State<Completed>{
	@override
	Widget build(BuildContext context) {
		// TODO: implement build
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.transparent,
				title: new Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						new Text("ABOUT", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),textAlign: TextAlign.center,),
						new Icon(Icons.event_available,color: Colors.black,)
					],
				),
				centerTitle: true,
			),
			body: Center(
				child: new Text("COMING SOON",style: TextStyle(fontSize: 80,fontWeight: FontWeight.w700,color: Colors.black),textAlign: TextAlign.center,),
			)
		);
	}
}