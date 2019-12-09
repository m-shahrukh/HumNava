import 'package:flutter/material.dart';
//import 'package:hum_nava/ImageRow.dart';
//import 'package:vibrate/vibrate.dart';
//import './translate.dart';
// enum FeedbackType {
//   success,
//   error,
//   warning,
//   selection,
//   impact,
//   heavy,
//   medium,
//   light
// }

class Keyboard extends StatefulWidget

{

 final translate;
Keyboard(this.translate);
 @override
  _Keyboard createState() => _Keyboard(translate);
  // {
  //   return _Keyboard();
  // }

}


class _Keyboard extends State <Keyboard> {
  
   final translate;
  _Keyboard(this.translate);
  List<String> images1= ["assets/how much.jpg", "assets/roti.jpg", "assets/now.jpg","assets/november.jpg"];//, "assets/house.png"];
  List<String> images2= ["assets/months.jpg", "assets/who.jpg", "assets/December.jpg"];


  var im1= [{"image":"assets/how much.jpg", "text":"How Many"},
             {"image":"assets/roti.jpg", "text":"Chapati"},
              {"image":"assets/now.jpg", "text":"Present"},
              {"image":"assets/november.jpg", "text":"November"}
              ];
  var im2= [{"image":"assets/months.jpg", "text":"Month"},
            {"image":"assets/who.jpg", "text":"Who"},
            {"image":"assets/December.jpg", "text":"December"}
            ];
  List<String> images3=["assets/time.jpg", "assets/2.jpg"];//, "assets/house.png"];

  @override
  Widget build(BuildContext context) {
     return Column(
      //mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         ImageRow(this, images1, translate, 90.0, 50.0, 42.0, im1), 
         ImageRow(this, images2, translate, 90.0, 100.0, 30.0,im2),
         //ImageRow(this, images3, translate, 65.0, 50.0, 70.0),
         //Container(
           //margin: EdgeInsets.only(top:300.00),
           //alignment: Alignment.bottomCenter,
           //color: Colors.black,
           //child:
          //   Row(
             
          //    children: <Widget>[
          //      Image.asset('assets/msg1.png'),
          //    ],
          //  )
         //)
       ],
     );

  }
}





class ImageRow extends StatefulWidget{
  


 final translate;
  
  final _Keyboard parent;
  final List<String> images; 
  final ht, wdth, leftMargin;
  final List<Map<String,String>> im;
  ImageRow(this.parent, this.images, this.translate, this.ht, this.wdth, this.leftMargin,this.im);

  @override
  State<StatefulWidget> createState() {
    return _ImageRow(parent, images, translate, ht, wdth, leftMargin, im);
  }

}


class _ImageRow extends State<ImageRow>{
  
 final translate;
  final _Keyboard parent; 
  final List<String> images;
  final ht, wdth, leftMargin;
  final List<Map<String,String>> im;

  _ImageRow(this.parent, this.images,this.translate, this.ht, this.wdth, this.leftMargin, this.im);
  //var _type = FeedbackType.impact;
   void _handleClick(var name){
       this.translate.setState(() {
                  this.translate.images.add(name);
                  this.translate.imtexts.add(name["text"]);
                });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: //<Widget>[
              im.map(
                (element) => 
                InkWell(
                onTap: ()=> _handleClick(element),
                child: Container(
                 margin: EdgeInsets.only(left:leftMargin, top:30.0),
                 width: wdth,
                 height: ht,
                 child: Column( children: <Widget> 
                 [Image.asset(element["image"]),
                  
                 Text(element["text"], style: TextStyle(fontSize: 10),)]
                 )
               )
              )
              ).toList(),
              // images.map(
              //   (element) => 
              //   InkWell(
              //   onTap: ()=> _handleClick(element),
              //   child: Container(
              //    margin: EdgeInsets.only(left:leftMargin, top:30.0),
              //    width: wdth,
              //    height: ht,
              //    child: Column( children: <Widget> 
              //    [Image.asset(element), Text('sample text', style: TextStyle(fontSize: 10),)])
              //  )
              // )
              // ).toList(),
    //           InkWell(
    //           onTap: ()=> _handleClick(images[0]),
               
    //            child: Container(
    //              //margin: EdgeInsets.only(left:15.0),
    //              width: wdth,
    //              height: ht,
    //              child: Image.asset(images[0])
    //            )
    //            ),
    // //) ,
    //           InkWell(
    //            onTap: ()=> _handleClick(images[1]),
    //            child: Container(
    //             //margin: EdgeInsets.only(left:15.0),
    //              width: wdth,
    //              height: ht,
                
    //              child: Image.asset(images[1])
    //            ),
    // ),
    //           InkWell(
    //             onTap: ()=>_handleClick(images[2]) ,
    //            child:Container(
    //              //margin: EdgeInsets.only(left:15.0),
    //              width: wdth,
    //              height: ht,
                
    //              child: Image.asset(images[2])
    //            )
    // ),
              
             //],
           );
  }
}