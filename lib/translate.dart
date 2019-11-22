import 'package:flutter/material.dart';
import 'package:emoji_picker/emoji_picker.dart';



class Translate extends StatelessWidget
{

@override
Widget build(BuildContext context) {
  return Scaffold(
    
        appBar: AppBar(
          title: Text("Flutter Emoji Picker Example"),
        ),
        body: MainPage(),
  );
}

}


class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => new MainPageState();
}

class MainPageState extends State<MainPage> {
  @override

  //List<Emoji> _list_emojis;
  Widget build(BuildContext context) {
    return 
    
    Column(
      
      children: <Widget> [EmojiPicker(
      rows: 3,
      columns: 7,
      recommendKeywords: ["racing", "horse"],
      numRecommended: 10,
      onEmojiSelected: (emoji, category) {
        print(emoji);
        
      },
    ),
    Container(
      child:Row(
        children: <Widget> [Icon(Icons.audiotrack, color: Colors.red, size:30.0),
        Icon(Icons.battery_full, color: Colors.red, size:30.0)],)
    )
    ]
    );
  }
}