 import "package:flutter/material.dart";
// import "./keyboard.dart";




class TextFieldRow extends StatefulWidget{
  final List<Map<String,String>> images;
  TextFieldRow(this.images);

  State<StatefulWidget> createState() {
    return _TextFieldRow(images);
  }

}


class _TextFieldRow extends State<TextFieldRow>{
   final List<Map<String,String>> images;
  _TextFieldRow(this.images);
  @override
  Widget build(BuildContext context) {
    return ListView(
             scrollDirection: Axis.horizontal,
             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children:
             images.map(
               (element)=> Container(
                  //width: 60.0,
                 //height: 50.0,
                 margin: EdgeInsets.only(left:10.0),
                 child:Column( children: <Widget> 
                 [Expanded (child: Image.asset(element["image"])), 
                 
                   Text(element["text"], style: TextStyle(fontSize: 10),)
                 ])
               )
                 //child:Image.asset(element["image"]))
             ).toList()
            //  <Widget>[
 
            //    Image.asset('assets/train.png'),
            //    Image.asset('assets/subway.png'),
            //    Image.asset('assets/house.png'),
            //  ],
           );
  }
}