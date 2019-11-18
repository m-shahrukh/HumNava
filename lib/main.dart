


import 'package:flutter/material.dart';
import './landingpage.dart';

void main() {
  runApp(HumNava());
}

class HumNava extends StatelessWidget
{
    @override
    Widget build (BuildContext context){
        

        return MaterialApp(
          home: HumNavaLandingPage(),
        );
    }
}
