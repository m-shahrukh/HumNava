import 'package:flutter/material.dart';



class Keyboard extends StatefulWidget

{

 @override
  State<StatefulWidget> createState() {
    return _Keyboard();
  }

}


class _Keyboard extends State <Keyboard> {
  @override
  Widget build(BuildContext context) {
     return Column(
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         Container(
           margin: EdgeInsets.only(top:300.00),
           alignment: Alignment.bottomCenter,
           //color: Colors.black,
           child: Row(
             
             children: <Widget>[
               Image.asset('assets/msg1.png'),
             ],
           )
         )
       ],
     );

  }
}