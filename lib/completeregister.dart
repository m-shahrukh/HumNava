import 'package:flutter/material.dart';
import 'package:hum_nava/tabbedlayout.dart';




class CompleteRegister extends StatelessWidget
{

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 150,
            height: 120,
            child: Image.asset('assets/green_tick.jpg'),
            margin: EdgeInsets.only(top:170.00),
            ),

          Container(
              margin: EdgeInsets.only(top:20.0),
              width: double.infinity,  //makes container take entire width of screen
              child: Text(
              "Congratulations!",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center    

              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 15.0),
              width: double.infinity,  //makes container take entire width of screen
              child: Text(
              "Registration Successful.",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center    

              ),
            ),

          Container(
          margin: EdgeInsets.only(left: 0.0, top:40.0),
         width: 190.0,
         height: 60.0,
         child: RaisedButton(
            
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> TabbedLayout()));

            },
            color: Colors.green,
            textColor: Colors.white,
            child: Text("Chat Now", 
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center),
          ) )
        ],
      )

    );
  }
}