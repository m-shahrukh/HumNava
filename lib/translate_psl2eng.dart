import 'package:flutter/material.dart';


class TranslatePsl2eng extends StatefulWidget
{
 @override
  State<StatefulWidget> createState() {
    return _TranslatePsl2eng();
  }
}


class _TranslatePsl2eng extends State <TranslatePsl2eng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          title: Text(
            'Translate',
            style: TextStyle(
              fontSize: 22,
              color: Colors.black,
            ),
          )),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Center(
        child:Column(children: <Widget>[
          Container(
            alignment: Alignment.topCenter,
            child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 20),
            alignment: Alignment.topCenter,
            width: 300,
          
            child: TextField(
              style: new TextStyle(
              fontSize: 20.0,
              height: 4,
              color: Colors.black,                  
            ),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Type here..'
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:40, left: 20),
            alignment: Alignment.topRight,
            width: 50,
            child: InkWell(
              child: FlatButton(
              onPressed: null,
              padding: EdgeInsets.all(0.0),
              child: Image.asset('assets/gree4.png')
              )
              )
          ),
        ])
            ),




            Container(
            alignment: Alignment.topCenter,
            child: Row(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 40.0, left: 20),
            alignment: Alignment.topLeft,
            width: 125,
            child: Text("Translate From: ",
            style: TextStyle(fontSize: 17.5),),
          ),

          Container(
                margin: EdgeInsets.only(top:40.0,left: 10),
                alignment: Alignment.topLeft,
                width: 250.00,
                height: 50.00,
                //margin: EdgeInsets.only(bottom: 60.0),
                child: RaisedButton(color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  "ENGLISH TO PSL",
                   style: TextStyle(fontSize: 17.5),
                   textAlign: TextAlign.center, 
                ),
                onPressed: (){}
                ),
              ),
        ])
            ),
        ],) ,
      ),
    );
  }
}



