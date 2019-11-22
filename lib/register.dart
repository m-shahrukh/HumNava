import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hum_nava/completeregister.dart';
import 'package:image_picker/image_picker.dart';


class Register extends StatefulWidget
{
 @override
  State<StatefulWidget> createState() {
    return _Register();
  }
}


class _Register extends State <Register> {

   var _image= "assets/user-unknown.png";
   //final _realImage=null;
    File _realImage;
    

  void setImg() async {
    File imag1;
  //  ImagePicker.pickImage(source: ImageSource.gallery, maxWidth: 200.00, maxHeight: 200.00).then((File image){
  //     imag1=image;
  //  });
      imag1= await ImagePicker.pickImage(source: ImageSource.gallery, maxWidth: 200.00, maxHeight: 200.00);
    setState( (){
       _realImage=imag1;
      // _image="assets/DP-1.jpeg";
    });

    
    
  }

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
            enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
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
              enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.green),
          ),
                labelText: 'Phone Number',
              ),
            ),
          ),

        Container(
              margin: EdgeInsets.only(top:50.0, bottom: 20.0),
              width: 200.0,
              height: 200.0,
              decoration:  BoxDecoration(
                  border: Border.all(color: Colors.black, style: BorderStyle.solid, width: 2.0),
                  shape: BoxShape.circle,
                  image:  DecorationImage(
                      fit: BoxFit.cover,
                      image: _realImage==null? AssetImage(_image) : FileImage(_realImage))))
        ,

        GestureDetector(
          onTap: setImg,
          child: Text("Edit Photo",
        style: TextStyle(color: Colors.blue, fontSize: 20),),),
          Container(
          margin: EdgeInsets.only(left: 10.0, top:30.0),
         width: 120.0,
         height: 50.0,
         child: RaisedButton(
            
            onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CompleteRegister()));

            },
            color: Colors.green,
            textColor: Colors.white,
            child: Text("Next", 
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center),
          ) )
        ]),
      ),
    );
  }
}
