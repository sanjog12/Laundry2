

import 'package:meta/dart2js.dart';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'pages/Appointment.dart';
import 'pages/completed.dart';
import 'pages/Profile.dart';


class Homepage_p extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Homepage_p();
  }
}

class _Homepage_p extends State<Homepage_p>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
	    appBar: AppBar(
		    backgroundColor: Colors.transparent,
				elevation: 0.0,
				title: new Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						new Text("HOME", style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900),textAlign: TextAlign.center,),
						new Icon(Icons.home,color: Colors.black,)
					],
				),
				centerTitle: true,
	    ),
			 body: home_1_p()

    );

  }

}


class home_1_p extends StatelessWidget{

	_showModalBottomSheet(context){
		showModalBottomSheet(context: context, builder: (BuildContext context){
			return Container(
				height: 320,
				decoration: BoxDecoration(
					color: Colors.white,
					image: DecorationImage(image: AssetImage('images/distance.jpg'), fit: BoxFit.cover),
					borderRadius: BorderRadius.only(
						topLeft: Radius.circular(20),
						topRight: Radius.circular(20)
					)
				),
				child: Column(
					children: <Widget>[
						Padding(
						  padding: const EdgeInsets.only(top: 30.0),
						  child: new Text("Distance",style: TextStyle(fontSize: 50, fontWeight: FontWeight.w600,color: Colors.black),textAlign: TextAlign.right,),
						),
					],
				),
			);
		});
	}
	_showModalBottomSheet1(context){
		showModalBottomSheet(context: context, builder: (BuildContext context){
			return Container(
				height: 320,
				decoration: BoxDecoration(
						color: Colors.white,
						image: DecorationImage(
							image: AssetImage('images/time.jpg'),fit: BoxFit.cover
						),
						borderRadius: BorderRadius.only(
								topLeft: Radius.circular(20),
								topRight: Radius.circular(20)
						)
				),
			);
		});
	}
	_showModalBottomSheet2(context){
		showModalBottomSheet(context: context, builder: (BuildContext context){
			return Container(
				height: 320,
				decoration: BoxDecoration(
						gradient: LinearGradient(
								begin: Alignment.topLeft,
								end: Alignment.bottomRight,
								stops: [0.3, 1],
								colors: [Colors.green, Colors.blue]),

						borderRadius: BorderRadius.only(
								topLeft: Radius.circular(20),
								topRight: Radius.circular(20)
						)
				),
			);
		});
	}
	_showModalBottomSheet3(context){
		showModalBottomSheet(context: context, builder: (BuildContext context){
			return Container(
				height: 320,
				decoration: BoxDecoration(
						gradient: LinearGradient(
								begin: Alignment.topRight,
								end: Alignment.bottomLeft,
								colors: [Colors.blue, Colors.red]),
						borderRadius: BorderRadius.only(
								topLeft: Radius.circular(20),
								topRight: Radius.circular(20)
						)
				),

			);
		});
	}
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
			children: <Widget>[
				Padding(padding: EdgeInsets.all(5.0),
					child: new Container(
							child: Padding(
							  padding: const EdgeInsets.only(bottom: 8.0),
							  child: new Column(
							  	children: <Widget>[
							  		Row(
							  			children: <Widget>[
							  				new Text("Explore",style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.w800),textAlign: TextAlign.left,)
							  			],
							  		),

							  		Padding(
							  		  padding: const EdgeInsets.only(top: 8.0),
							  		  child: Row(

							  		  	children: <Widget>[
							  		  		new Expanded(
							  		  	child: Padding(
							  		  	  padding: const EdgeInsets.only(right: 3.0),
							  		  	  child: Container(
							  		  	  	height: 100.0,
							  		  	  	decoration: new BoxDecoration(
							  		  	  		borderRadius: new BorderRadius.circular(5.0),
							  		  	  		color: Color(0xFFFD7384)
							  		  	  	),
							  		  	  	child: RaisedButton(onPressed: (){
							  		  	  		Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile()),);
														},color: Color(0xFFFD7384),
							  		  	  	child: Column(
							  		  	  		mainAxisAlignment: MainAxisAlignment.center,
							  		  	  		children: <Widget>[
							  		  	  			new Icon(Icons.person,color: Colors.white),
							  		  	  			new Text("Profile",style: TextStyle(color: Colors.white),)
							  		  	  		],
							  		  	  	),),
							  		  	  ),
							  		  	)
							  		  		),
							  		  		new Expanded(
							  		  				child: Padding(
							  		  				  padding: const EdgeInsets.only(right: 2.5),
							  		  				  child: Container(
							  		  				  	height: 100.0,
							  		  				  	child: Column(
							  		  				  		children: <Widget>[
							  		  				  			Expanded(
							  		  				  					child: Padding(
							  		  				  					  padding: const EdgeInsets.only(bottom: 4.0),
							  		  				  					  child: new Container(
							  		  				  					  	decoration: new BoxDecoration(
							  		  				  					  			borderRadius: new BorderRadius.circular(5.0),
							  		  				  					  			color: Color(0xFFFD7384)
							  		  				  					  	),
							  		  				  					  	child: RaisedButton(onPressed: (){
																								Navigator.push(context, MaterialPageRoute(builder: (context)=> Completed()),);
																							},color: Color(0xFF2BD093),
							  		  				  					  		child: Row(
							  		  				  					  			mainAxisAlignment: MainAxisAlignment.center,
							  		  				  					  			children: <Widget>[
							  		  				  					  				new Padding(padding: EdgeInsets.all(5.0)),
							  		  				  					  				new Icon(Icons.directions_run,color: Colors.white),
							  		  				  					  				new Text("Distance",style: TextStyle(color: Colors.white),)
							  		  				  					  			],
							  		  				  					  		),),
							  		  				  			),
							  		  				  					)
							  		  				  			),
							  		  				  			Expanded(
							  		  				  					child: new Container(
							  		  				  						decoration: new BoxDecoration(
							  		  				  								borderRadius: new BorderRadius.circular(5.0),
							  		  				  								color: Color(0xFFFD7384)
							  		  				  						),
							  		  				  						child: RaisedButton(onPressed: (){
																							Navigator.push(context, MaterialPageRoute(builder: (context)=> Completed()),);
																						},color: Color(0xFFFC7B4D),
							  		  				  							child: Row(
							  		  				  								mainAxisAlignment: MainAxisAlignment.center,
							  		  				  								children: <Widget>[
							  		  				  									new Icon(Icons.access_time,color: Colors.white),
							  		  				  									new Text("Time",style: TextStyle(color: Colors.white),)
							  		  				  								],
							  		  				  							),),
							  		  				  					)
							  		  				  			),
							  		  				  		],
							  		  				  	),
							  		  				  ),
							  		  				)
							  		  		),
							  		  		new Expanded(
							  		  				child: Container(
							  		  					height: 100.0,
							  		  					child: Column(
							  		  						children: <Widget>[
							  		  							Expanded(
							  		  									child: Padding(
							  		  									  padding: const EdgeInsets.only(bottom: 4.0),
							  		  									  child: new Container(
							  		  									  	decoration: new BoxDecoration(
							  		  									  			borderRadius: new BorderRadius.circular(5.0),
							  		  									  			color: Color(0XFF53CEDB)
							  		  									  	),
							  		  									  	child: RaisedButton(onPressed: (){
																							Navigator.push(context, MaterialPageRoute(builder: (context)=> Appointment()),);
																						},color: Color(0xFF53CEDB),
							  		  									  		child: Row(
							  		  									  			mainAxisAlignment: MainAxisAlignment.center,
							  		  									  			children: <Widget>[
							  		  									  				new Icon(Icons.work,color: Colors.white),
							  		  									  				new Text("Tasks",style: TextStyle(color: Colors.white),)
							  		  									  			],
							  		  									  		),),
							  		  									  ),
							  		  									)
							  		  							),
							  		  							Expanded(
							  		  									child: new Container(
							  		  										decoration: new BoxDecoration(
							  		  												borderRadius: new BorderRadius.circular(5.0),
							  		  												color: Color(0xFFFD7384)
							  		  										),
							  		  										child: RaisedButton(onPressed: (){
																						Navigator.push(context, MaterialPageRoute(builder: (context)=> Completed()),);
																					},color: Color(0XFFF1B069),
							  		  											child: Row(
							  		  												mainAxisAlignment: MainAxisAlignment.center,
							  		  												children: <Widget>[
							  		  													new Padding(padding: EdgeInsets.only(left: 0.5, right: 0.2)),
							  		  													new Icon(Icons.assignment_turned_in,color: Colors.white,size: 15.0,),
							  		  													new Text("Attendance",style: TextStyle(color: Colors.white),)
							  		  												],
							  		  											),),
							  		  									)
							  		  							),
							  		  						],
							  		  					),
							  		  				)
							  		  		),

							  		  	],
							  		  ),
							  		)
							  	],
							  ),
							),
					),
				),
//				ListView(
//					scrollDirection: Axis.horizontal,
//					children: <Widget>[
//						Container(
//					height: 150,
//					width: 100,
//					decoration: BoxDecoration(
//
//						image: DecorationImage(
//						image: AssetImage('images/shop1.jpg'),fit: BoxFit.cover
//		),
//						)
//						),
//						Container(
//								height: 150,
//								width: 100,
//								decoration: BoxDecoration(
//
//									image: DecorationImage(
//											image: AssetImage('images/shop2.jpg'),fit: BoxFit.cover
//									),
//								)
//						),
//						Container(
//								height: 150,
//								width: 100,
//								decoration: BoxDecoration(
//									color: Colors.white,
//									image: DecorationImage(
//											image: AssetImage('images/shop3.jpg'),fit: BoxFit.cover
//									),
//								)
//						),
//						Container(
//								height: 150,
//								width: 100,
//								decoration: BoxDecoration(
//									color: Colors.white,
//									image: DecorationImage(
//											image: AssetImage('images/shp4.jpg'),fit: BoxFit.cover
//									),
//								)
//						),
//					],
//				),



			Padding(
			  padding: const EdgeInsets.only(top: 25,bottom: 5,left: 10),
			  child: Container(
			  	child: new Text("At A Glance.....",style: TextStyle(fontSize: 30.0,color: Colors.black,fontWeight: FontWeight.w800),textAlign: TextAlign.left,),
			  ),
			),
			Padding(
			  padding: const EdgeInsets.only(top:2.0),
			  child: Container(
			  	height: 380,
			    child: new Stack(
			    	alignment: Alignment.center,
			    	children: <Widget>[
			    		Positioned(
			    			top: 0,
			    		  child: Card(
			    				margin: EdgeInsets.zero,
			    		  	elevation: 10.0,
			    		  	color: Colors.blueGrey,
			    		  	shape: RoundedRectangleBorder(
			    		  		borderRadius: BorderRadius.all(Radius.circular(20.0)),
			    		  	),
			    		  	child: Container(

			    		  		width: 350,
			    		  		height: 150,
										child: Padding(
										  padding: const EdgeInsets.only(top: 5.0),
										  child: new Text("Hello, Ravi", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
										),
			    		  	),
			    		  ),
			    		),
			    		Positioned(
			    			top: 60,
			    			child: Card(

			    				margin: EdgeInsets.zero,
			    				elevation: 10.0,
			    				color: Colors.blueAccent,
			    				shape: RoundedRectangleBorder(
			    					borderRadius: BorderRadius.all(Radius.circular(10.0)),
			    				),
			    				child: new InkWell(
										splashColor: Colors.white,
										onTap: (){
											_showModalBottomSheet(context);
										},
										child: Container(

											width: 350,
											height: 150,
											child: new Text("Distance", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
										),
									)

			    			),
			    		),
			    		Positioned(
			    			top: 110,
			    			child: Card(
			    				margin: EdgeInsets.zero,
			    				elevation: 10.0,
			    				color: Colors.blue,
			    				shape: RoundedRectangleBorder(
			    					borderRadius: BorderRadius.all(Radius.circular(10.0)),
			    				),
			    				child: new InkWell(
										splashColor: Colors.white,
										onTap: (){
										_showModalBottomSheet1(context);
										},
			    				  child: Container(

			    				  	width: 350,
			    				  	height: 150,
										child: new Text("Time Spent", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
			    				  ),
			    				),
			    			),
			    		),
			  			Positioned(
			  				top: 160,
			  				child: Card(
			  					margin: EdgeInsets.zero,
			  					elevation: 10.0,
			  					color: Colors.black26,
			  					shape: RoundedRectangleBorder(
			  						borderRadius: BorderRadius.all(Radius.circular(10.0)),
			  					),
			  					child: new InkWell(
										splashColor: Colors.white,
										onTap: (){
											_showModalBottomSheet2(context);
										},
			  					  child: Container(

			  					  	width: 350,
			  					  	height: 150,
										child: new Text("Attendance", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
			  					  ),
			  					),
			  				),
			  			),
			  			Positioned(
			  				top: 220,
			  				child: Card(
			  					margin: EdgeInsets.zero,
			  					elevation: 10.0,
			  					color: Colors.lightBlueAccent,
			  					shape: RoundedRectangleBorder(
			  						borderRadius: BorderRadius.all(Radius.circular(10.0)),
			  					),
			  					child: new InkWell(
										splashColor: Colors.white,

										onTap: (){

											_showModalBottomSheet3(context);
										},
			  					  child: Container(

			  					  	width: 350,
			  					  	height: 170,
										child: Column(


										  children: <Widget>[
										    new Text("Tasks Completed", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300,fontSize: 30,fontStyle: FontStyle.italic),textAlign: TextAlign.center,),
										  ],
										),
			  					  ),
			  					),
			  				),
			  			)
			    	],
			    ),
			  ),
			)
			],
		);
  }

}

