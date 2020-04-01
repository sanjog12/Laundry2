import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
	
	int _currentindex = 0 ;                                    //variable for page control in bottom navigation bar working a page number
	PageController _pageController;                            // Variable to control page
	
	@override
	void initState() {
		super.initState();
		_pageController =PageController();
	}
	
	@override
	void dispose() {
		_pageController.dispose();
		super.dispose();
	}
	
	
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
	    appBar: AppBar(
		    title: Text("Pick_drop_ui"),
		    backgroundColor: Colors.blueAccent,
		    shape: RoundedRectangleBorder(
			    borderRadius: BorderRadius.circular(20.0),
		    ),
	    ),
	    
	    body: SizedBox.expand(
		    child: PageView(
			    controller: _pageController,
			    onPageChanged: (index) {
			    	setState(() {
			    	  _currentindex =index;
			    	});
			    },
			    
			    children: <Widget>[
			    	Profile(),
				    Appointment(),
				    Completed(),
			    ],
		    ),
	    ),
	    
	    bottomNavigationBar: BottomNavyBar(
		    selectedIndex: _currentindex,
		    onItemSelected: (index) {
		    	setState(() {
		    	  _currentindex = index;
		    	});
			    _pageController.jumpToPage(_currentindex);
		    },
		    
		    items: <BottomNavyBarItem>[
		    	BottomNavyBarItem(                                                         // TO control the appearance , text , color , and transition.....
				    title: Text("Profile"),                                                  // .... of the items in the bottom navigation bar
				    inactiveColor: Colors.grey,
				    activeColor: Colors.blueAccent,
				    icon: Icon(Icons.perm_identity),
			    ),
			    
			    BottomNavyBarItem(
				    title: Text("Appointments"),
				    inactiveColor: Colors.grey,
				    activeColor: Colors.lightGreen,
				    icon : Icon(Icons.notifications_active),
			    ),
			    
			    BottomNavyBarItem(
				    title: Text("Completed work"),
				    inactiveColor: Colors.grey,
				    activeColor: Colors.purpleAccent,
				    icon : Icon(Icons.work)
			    )
		    ],
	    ),
    );
  }
}