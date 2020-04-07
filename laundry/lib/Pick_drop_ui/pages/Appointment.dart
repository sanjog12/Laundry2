import 'package:flutter/material.dart';

class Appointment extends StatefulWidget{
	@override
	State<StatefulWidget> createState() {
		// TODO: implement createState
		return _Appointment();
	}
}

class _Appointment  extends State<Appointment>{
	@override
	Widget build(BuildContext context) {
		// TODO: implement build
		return Scaffold(
			appBar: AppBar(
				backgroundColor: Colors.transparent,
				title: new Row(
					mainAxisAlignment: MainAxisAlignment.center,

					children: <Widget>[
						new Text("TASKS", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900)),
						new Icon(Icons.work,color: Colors.black,)
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