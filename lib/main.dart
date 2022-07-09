import 'dart:math';
import 'package:flutter/material.dart';//git#comment
void main()=> runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
  title: "Dice App",
  home: HomePage(),
));

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int dicenumber = 1;

  changeDice(){
    setState((){
      dicenumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text("Dice Roller"),
        centerTitle: true,
      ),
      body: Column (
        children: [
        SizedBox(height:20),
        Center( child: Image.asset("assets/$dicenumber.jpg", height:225, width:850),),
        
        MaterialButton(
          color: Colors.blue,
          onPressed: changeDice,
          child: Text("Roll", style: TextStyle(color: Colors.white,fontSize: 35), ),
        ),
        SizedBox(height: 70),
        Text('#FlutterWithBRP', style: TextStyle(color: Colors.blue, fontSize: 15),),

        ],
      ),

    );
  }
}