import 'package:flutter/material.dart';
import 'package:hum_nava/register.dart';
import './translate.dart';


class HumNavaLandingPage extends StatelessWidget
{
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: 
            Center(
            child:Column(
              
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget> [ 

              Container(child:
              Image.asset('assets/Logo.jpeg'),
              margin: EdgeInsets.only(top:175.0),
              width: 300,
              height: 120,
              ),
              
              Container(
              margin: EdgeInsets.all(30.0),
              width: double.infinity,  //makes container take entire width of screen
              child: Text(
              "HamNava",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center    

              ),
            ),

            Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
              Container(
                margin: EdgeInsets.only(top:10.0),
                width: 195.00,
                height: 50.00,
                //margin: EdgeInsets.only(bottom: 60.0),
                child: RaisedButton(color: Colors.green,
                textColor: Colors.white,
                child: Text(
                  "Register",
                   style: TextStyle(fontSize: 23),
                   textAlign: TextAlign.center,

                
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
                }
                ),
                
              ),
              Container(
                margin: EdgeInsets.only(top:40.0),
                width: 195.00,
                height: 50.00,
                           //     margin: EdgeInsets.only(bottom: 60.0),
                child: RaisedButton(color: Colors.green,
                textColor: Colors.white,
                child: Text("Translate",
                                   style: TextStyle(fontSize: 23),
                   textAlign: TextAlign.center,),
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Translate()));

                }
                ),
              ),
              ]),
              ]
            )
            )
          );
  }
}