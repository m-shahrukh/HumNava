import 'package:flutter/material.dart';



BuildContext context1;
class TabbedLayout extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    context1=context;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          // #39CA87DE
          backgroundColor:Colors.green,
          bottom: TabBar(
            indicatorColor: Colors.lightGreenAccent,
            indicatorWeight: 3.5,

            tabs: [

              Tab(icon: Text('Chat',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ))),
              Tab(icon: Text('Translation',
                  style: new TextStyle(
                    fontSize: 20.0,
                  ))),
              Tab(icon: Text('Video Call',
                style: new TextStyle(
                fontSize: 20.0,
              )))
            ],
          ),
          title: Text('HumNava'),
        ),
        body: TabBarView(
         /* children: [

          /*  new Text('No current chat is available.\nClick on the icon on bottom right of the screen to start a new chat.',
          style: new TextStyle(
            fontSize: 20.0,
            )),*/

            Text('Translation'),
            Text('Video Call')
          ],*/
          children: [
            new ListView(
              children: list,
            ),
            new ListView(
              children: list,
            ),
            new ListView(
              children: list,
            ),
          ],
        ),
        floatingActionButton: Container(
          width: 70,
          height: 70,
          child:FloatingActionButton(

          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FirstRoute()),
            );
          },
          backgroundColor: Colors.green,
          tooltip: 'NewChat',
          child: Icon(Icons.add),
        )
        ),

      ),
    );
  }
}Future navigateToSubPage(context) async {
  Navigator.push(context, MaterialPageRoute(builder: (context) => FirstRoute()));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Chat'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('New Chat'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}

List<Widget> list = <Widget>[
  new ListTile(
    title: new Text('Ahmad Hassan',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0)),
    //subtitle: new Text('85 W Portal Ave'),
    leading: new Icon(
      Icons.account_circle,
      color: Colors.black,
      size: 50.0,
    ),
    onTap: (){
      Navigator.push(
        context1,
        MaterialPageRoute(builder: (context1) => FirstRoute()),
      );
    },
  ),
  new ListTile(
    title: new Text('Javeria Tahir',
        style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0)),
    //subtitle: new Text('429 Castro St'),
    leading: new Icon(
      Icons.account_circle,
      color: Colors.black,
      size: 50.0,
    ),
  ),
  new ListTile(
    title: new Text('Ali Khan',
    style: new TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0)),
    //subtitle: new Text('2550 Mission St'),
    leading: new Icon(
      Icons.account_circle,
      color: Colors.black,
      size: 50.0,
    ),
  ),





];
