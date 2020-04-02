import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Profile();
  }
}

class _Profile extends State<Profile> {
  final String _fullName = "Ravi Sharma";
  final String _dob = "12 DEC 1970";
  final String _employeeId = "AWS123";
  final String _mobile = '9854632100';
  final String _address = "Avenue-6, Street -4";
  final String _post = "Delivery";
  Widget _coverImage(Size screensize){
    return Container(
      height: screensize.height/2.8,
      child: Image.asset('images/theme.jpg'),
    );
  }
  Widget _profileImage(){
    return Center(
      child: Container(
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/user.jpg'),

            ),
          borderRadius: BorderRadius.circular(150.0),
          border: Border.all(
            color: Colors.black,
            width: 10.0,
          ),
          ),
        ),
      );
  }

  Widget _fullname(){
    TextStyle _name = TextStyle(
      color: Colors.black,
      fontSize: 30.0,
      fontWeight: FontWeight.w800
    );
    return Text(

      _fullName,
      style: _name,
    );
  }
  Widget post(BuildContext context){
  return Container(
    padding: EdgeInsets.symmetric(vertical: 0.4, horizontal: 4.0),
    decoration: BoxDecoration(
      color: Theme.of(context).scaffoldBackgroundColor,
      borderRadius: BorderRadius.circular(4.0),
    ),
    child: Text(
      _post,
      style: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.w300
      ),
    ),
  );
  }
  @override
  Widget build(BuildContext context) {
    Size screensize = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
	    body: Stack(
        children: <Widget>[
          _coverImage(screensize),
          SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: screensize.height/6.4),
                    _profileImage(),
                    _fullname(),
                    post(context),
                    Container(
                      margin: const EdgeInsets.all(20.0),
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.blue[100],
                            width: 15.0,
                          ),
                          top: BorderSide(
                            color: Colors.blue[300],
                            width: 10.0,
                          ),
                          right: BorderSide(
                            color: Colors.blue[500],
                            width: 5.0,
                          ),
                          bottom: BorderSide(
                            color: Colors.blue[800],
                            width: 3.0,
                          )
                        )
                      ),

                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text('EMPLOYEE ID:', style: new TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 20
                              ),),
                              new Text(_employeeId, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 15),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text('DOB:', style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),),
                              new Text(_dob, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 15),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text('MOBILE:', style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),),
                              new Text(_mobile, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 15),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Text('ADDRESS:', style: new TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),),
                              new Text(_address, style: new TextStyle(color: Colors.black, fontWeight: FontWeight.w400,fontSize: 15),)
                            ],
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 10.0)),
                        ],
                      )
                    )
                  ],
                    ),

              ),
          )
                  ],
                ),
              );
  }
}