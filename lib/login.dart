import 'package:flutter/material.dart';
import 'helpers/Constants.dart';

class Login extends StatelessWidget {
  //instantiate an instance of TextEditingController here, which has a main responsibility of handling all text editing logic.
  final _pinCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final logo = Container(
      padding: EdgeInsets.only(top: 20.0),
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        child: applogo,
        radius: bigRadius,
      ),
    );

    final pincode = TextFormField(
      controller: _pinCodeController,
      keyboardType: TextInputType.phone,
      maxLength: 4,
      maxLines: 1,
      autofocus: true,
      decoration: InputDecoration(
          hintText: pinCodeHintText,
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 10.0, 20.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
          hintStyle: TextStyle(color: Colors.black)),
      style: TextStyle(
        color: Colors.black,
      ),
    );

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        onPressed: () {},
        padding: EdgeInsets.all(12.0),
        child: Text(
          loginButtonText,
          style: TextStyle(color: Colors.black),
        ),
      ),
    );



    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          children: <Widget>[
            logo,
            SizedBox(
              height: bigRadius,
            ),
            pincode,
            SizedBox(
              height: smallRadius,
            ),
            loginbutton,
          ],
        ),
      ),
    );
  }
}
