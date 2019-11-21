import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Personal Information',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          )),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.topCenter,
            width: 250,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            alignment: Alignment.topCenter,
            width: 250,
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Phone Number',
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.all(40.0),
              width: 175.0,
              height: 190.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: ExactAssetImage('assets/DP-1.jpeg')))),
          Text("Shahrukh", textScaleFactor: 1.5)
        ]),
      ),
    );
  }
}
