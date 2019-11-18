import 'package:flutter/material.dart';


class Register extends StatelessWidget
{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(appBar:
     AppBar(backgroundColor: Colors.white,
     iconTheme: IconThemeData(color: Colors.black),
    title: Text('Personal Information',
    style: TextStyle(fontSize: 22,
    color: Colors.black,
    ),
    )
    ),
    backgroundColor: Colors.white,
    body:
    Center(child: Column(
      children: <Widget>[    
    Container(
      margin: EdgeInsets.only(top:20.0),
      alignment: Alignment.topCenter,
      width: 250,
      child:TextFormField(
  decoration: InputDecoration(
    labelText: 'Name',
    
  ),
), 
),
   Container(
      margin: EdgeInsets.only(top:20.0),
      alignment: Alignment.topCenter,
      width: 250,
      child:TextFormField(
  decoration: InputDecoration(
    labelText: 'Phone Number',
    
  ),
), 
)
]
    ),
),
    );
  }
}