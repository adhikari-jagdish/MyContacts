import 'package:flutter/material.dart';
import 'helpers/Constants.dart';
import 'login.dart';

void main(){
  runApp(new Contactly());
}

class Contactly extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login()
      ),
    );
  }

}