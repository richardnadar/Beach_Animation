import 'package:flutter/material.dart';
import 'package:myanimation_app/myanim.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[
            Icon(Icons.beach_access_rounded,
            color: Colors.white,
            size: 30.0,)
          ],
          title: Text('Summer Animation',
          style:TextStyle(
                         fontSize: 25,
                         color: Colors.red,
                         fontWeight: FontWeight.bold,
                      ) ,),
        ),
        body: MyA1(),
      ),
    ),
  );
}
