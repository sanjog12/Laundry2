import 'package:flutter/material.dart';

class Appointment extends StatefulWidget{
	@override
	State<StatefulWidget> createState() {
		// TODO: implement createState
		return _Appointment();
	}
}

class _Appointment  extends State<Appointment>{
	List<Widget> containers=[
		Container(
			color: Colors.deepPurple[100],
		),
		Container(
			color: Colors.white,
		),
	];
	@override
	Widget build(BuildContext context) {
		return DefaultTabController(
			length: 2,
			child: Scaffold(
				backgroundColor: Colors.blueGrey[100],
				appBar: AppBar(
					title: Text('Jobs Assigned'),
					backgroundColor: Colors.indigo[600],
					leading: IconButton(
						onPressed: (){},
						icon: Icon(Icons.menu),
					),
					actions: <Widget>[
						IconButton(
							onPressed: (){},
							icon: Icon(Icons.search),
						),
						IconButton(
							onPressed: (){},
							icon: Icon(Icons.more_vert),
						),
					],
					bottom: TabBar(
						tabs: <Widget>[
							Tab(
								text: 'Upcoming',
							),
							Tab(
								text: 'Completed',
							),
						],
					),
				),
				body:Container(
					child: ListView(children: <Widget>[
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-1',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Meerapur,Prayagraj-211003'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-2',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Mahavir Enclave,Palam-110023'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-3',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Mangolpuri,Rohini-112009'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-4',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Vaishali,Ghaziabad-345006'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-1',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Gandhi Nagar,Jammu-332110'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
						Card(
							color: Colors.blueGrey[50],
							child: InkWell(
								splashColor: Colors.blue[100].withAlpha(100),
								onTap: () {
								},
								child: Column(
									mainAxisSize: MainAxisSize.min,
									children: <Widget>[
										const ListTile(
											leading: Icon(Icons.view_module),
											title: Text(
												'Laundry Job-6',
												style: TextStyle(
													fontWeight: FontWeight.w600,
													letterSpacing: .5,
												),
											),
											subtitle: Text('Gandhi Maidan,Patna-110003'),
										),
										ButtonBar(
											children: <Widget>[
												RaisedButton(
													child: const Text('OPEN'),
													onPressed: () {/* ... */},
													focusElevation: 10,
												),
												RaisedButton(
													child: const Text('SHARE'),
													onPressed: () {/* ... */},
													focusElevation: 20,
												),
											],
										),
									],
								),
							),
						),
					],
					),
				),
			),
		);
	}
}