//here we have divided app body into flat button and uses on press features
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      )
    )
  );
}




class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftdnum=1;
  var rightdnum=2;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 10,height: double.infinity),

              Expanded(
              child:
              FlatButton(
                splashColor:Colors.teal,
                padding: EdgeInsets.fromLTRB(5.0,0.0,5.0,0.0),
                onPressed: (){
                //  func1();
                  setState((){
                    leftdnum= Random().nextInt(6)+1;
                    rightdnum=Random().nextInt(6)+1;
                  });
                },
                child: Image(
                  image: AssetImage('images/Dice-$leftdnum.png',),
                )
              )
          )
      ]);
    }
  }

 



