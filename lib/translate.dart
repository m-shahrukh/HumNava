import 'package:flutter/material.dart';
import 'package:hum_nava/TextFieldImgRow.dart';
import 'package:hum_nava/translate_eng2psl.dart';
import './keyboard.dart';


class Translate extends StatefulWidget
{
 @override
 _Translate createState() => _Translate(); 
  // State<StatefulWidget> createState() {
  //   return _Translate();
  // }
}



class _Translate extends State <Translate> {
  List<Map<String,String>> images=[];
  List<String> imtexts=[];
  var flag=0;
  var flag2=0;
  var keyboardMargin= 250.0;


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
      body: //Center
      // Container(
      //   height: double.infinity,
      //   child:
        Column(
          
          children: <Widget>[

          Container(
            //alignment: Alignment.topCenter,
            child: Row(children: <Widget>[
           
           InkWell(
             onTap: (){
               setState(() {
                 flag2=1;
                 flag=0;
               });
             },
             //decoration: BoxDecoration(),
             child:
             
             Container(
               margin: EdgeInsets.only(top:40.0, left:20.0),
               decoration: BoxDecoration(
                 shape:BoxShape.rectangle,
                 borderRadius: BorderRadius.all(Radius.circular(5.0)),
                 border: Border.all(
                   width: 0.5,
                   style: BorderStyle.solid
                 )
               ),
              width: 280.00,
             height: 100.00,
               
            child: images.length==0? Text('Type here...'):  TextFieldRow(images),
               
             )
             ,
           
           ),


          // Container(
          //   margin: EdgeInsets.only(top: 40.0, left: 20),
          //   //alignment: Alignment.topCenter,
          //   width: 300,
          //   child: TextField(
          //     decoration: InputDecoration(
          //       border: OutlineInputBorder(),
          //       hintText: 'Type here..'
          //     ),
          //   ),
          // ),


          Container(
            margin: EdgeInsets.only(top:40, left: 20),
           // alignment: Alignment.topRight,
            width: 50,
            child: InkWell(
              child: FlatButton(
              onPressed: (){
                setState(() {
                  flag=1;
                  flag2=0;
                  keyboardMargin=200.00;
                });
              },
              padding: EdgeInsets.all(0.0),
              child: Image.asset('assets/gree4.png')
              )
              )
          ),
        ])
         ),


            Container(

            //alignment: Alignment.topCenter,
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
                  "PSL TO ENGLISH",
                   style: TextStyle(fontSize: 17.5),
                   textAlign: TextAlign.center, 
                ),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> TranslateEng2Psl()));

              }
              ),
              ),
        ]
        )
          ),
          
        flag!=0 ? Column(
          children: <Widget> [ 
        Container(
            margin: EdgeInsets.only(top: 40.0, left: 23.0),
            //alignment: Alignment.topLeft,
            width: double.infinity,
            child: Text("English Translation: ",
            style: TextStyle(fontSize: 17.5, fontWeight: FontWeight.bold),),
          ), 

          Row(
            children: 
              imtexts.map((element)=>
          Container(

            margin: EdgeInsets.only(left:24.0, top:20.0),
            child:
            Text(element,
            style: TextStyle(fontSize: 20.5, fontWeight: FontWeight.bold, color: Colors.green),
            ) )
            
          ).toList()
          )
          ]): Text(''),

        
        //Column(
          //children: <Widget>[
          //flag2!=0? ...(drawKeyboard().map((element){return} ).toList()) : Text(''), 
          
        flag2!=0? 
         Container( 
           margin: EdgeInsets.only(top: keyboardMargin),
           child:Keyboard(this)
        ): Text(''),

        flag2!=0?
        //Expanded(
          //child:
          Row(

          children: <Widget>[
          Container(
          
          width: 75.0,
          height: 40.0,
          margin: EdgeInsets.only(left:30.0),
          //alignment: Alignment.bottomRight,
          child: FlatButton(onPressed: (){
            setState(() {
              flag2=0;
              //images.removeLast();
            });
          },
          //color: Colors.grey,
          child: Image.asset('assets/green_tick.jpg')),
        //)
          ),

          Expanded(
          child:Container(
          width: 60.0,
          height: 40.0,
          margin: EdgeInsets.only(left:200.0, bottom: 0.0),
          //alignment: Alignment.bottomRight,
          child: FlatButton(onPressed: (){
            setState(() {
              images.removeLast();
              imtexts.removeLast();
            });
          },
          //color: Colors.grey,
          child: Image.asset('assets/backspace1.png')),
        ))
          ]): Text(''),
        
        // flag2!=0?
        // Expanded(
        //   child:Container(
        //   width: 70.0,
        //   height: 50.0,
        //   margin: EdgeInsets.only(left:320.0, bottom: 5.0),
        //   //alignment: Alignment.bottomRight,
        //   child: FlatButton(onPressed: (){
        //     setState(() {
        //       images.removeLast();
        //     });
        //   },
        //   //color: Colors.grey,
        //   child: Image.asset('assets/backspace1.png')),
        // )): Text(''),

        // flag2!=0?
        // //Expanded(
        //   //child:
        //   Container(
          
        //   width: 70.0,
        //   height: 40.0,
        //   margin: EdgeInsets.only(right:280.0, bottom: 5.0),
        //   //alignment: Alignment.bottomRight,
        //   child: FlatButton(onPressed: (){
        //     setState(() {
        //       flag2=0;
        //       //images.removeLast();
        //     });
        //   },
        //   //color: Colors.grey,
        //   child: Image.asset('assets/green_tick.jpg')),
        // //)
        // ): Text('')
          //]),

          ]
        
        ,) ,
     // ),
    );
  }
}



