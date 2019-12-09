import 'package:flutter/material.dart';
import './translate.dart';

class TranslateEng2Psl extends StatefulWidget
{
 @override
  State<StatefulWidget> createState() {
    return _TranslateEng2Psl();
  }
}


class _TranslateEng2Psl extends State <TranslateEng2Psl> {
  TextEditingController translateController= TextEditingController();
  var im1= [{"image":"assets/how much.jpg", "text":"How Many"},
             {"image":"assets/roti.jpg", "text":"Chapati"},
              {"image":"assets/now.jpg", "text":"Present"},
              {"image":"assets/november.jpg", "text":"November"}
              ];
  var im2= [{"image":"assets/months.jpg", "text":"Month"},
            {"image":"assets/who.jpg", "text":"Who"},
            {"image":"assets/December.jpg", "text":"December"}
            ];

  var hint= "Type Here...";
  var err=false;

  int checkArray(var im, var input){
    var count=0;
    for (Map<String, String> obj in im ){
      if (obj["text"].toLowerCase()==input.toLowerCase()){return count; }
      count++;
    }
    return -1;
  }
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
            // decoration: BoxDecoration(
            //      border: Border.all(
            //        width: 1.5,
            //        style: BorderStyle.solid
            //      )
            //    ),
            width: 280.00,
            height: 100.00,
            child: TextField(
              controller: translateController,
              style: new TextStyle(
              fontSize: 20.0,
              height: 4,
              color: Colors.black,                  
            ),
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: hint,//'Type here..'
                errorText: err? "bdsk sai likh":null
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:40, left: 20),
            alignment: Alignment.topRight,
            width: 50,
            child: InkWell(
              child: FlatButton(
              onPressed: (){
                setState(() {
                  
                //hint="aa";
                var input= translateController.text;
                var ret= checkArray(im1,input);
                if (ret!=-1){hint=im1[ret]["image"]; translateController.text=hint; err=false; }
                else{err=true;}
                // var list1= im1.map( (element)=>

                // element["text"]==input? element:null
                
                // ).toList();
                
                // var list2= im2.map( (element)=>

                // element["text"]==input? element:null
                
                // ).toList();
                
                //list1.length!=0 ? hint=list1[0]["image"]: hint=list1.length.toString();

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
                  "PSL TO ENGLISH",
                   style: TextStyle(fontSize: 17.5),
                   textAlign: TextAlign.center, 
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Translate()));

                }
                ),
              ),
        ])
            ),
        ],
        ),
      ),
    );
  }
}



