import 'dart:async';
import 'package:shifaaut/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,


      home: SplashScreen1(),
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

    );
  }
}
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  _SplashScreen1State createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  createAlertDialog (BuildContext context){
    TextEditingController nameController= TextEditingController();
    return showDialog(context:context,builder: (context){
      return AlertDialog(
        title: Text("Enter Your Name"),
        content: TextField(
          controller: nameController,
        ),
        actions: [
          MaterialButton(
              elevation: 10,
              child: Text("Submit"),
              onPressed:(){}),
        ],

      );
    });
  }
  @override
  void initState() {

    super.initState();
    Timer(
      Duration(seconds: 5), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LogInScreen())),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,

child: Center(
    //image: Image.asset('assets/LogoSample_ByTailorBrands.jpg'),

  child:Column(

    children: [
      SizedBox(height: 100),
      Text("Welcome To SHIFA HUB", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),),
      Padding(padding: EdgeInsets.only(bottom:100,)),
      //SizedBox(height: 50),
      Image.asset('assets/LogoSample_ByTailorBrands.jpg'),
      CircularProgressIndicator(
        backgroundColor: Colors.white,

      ),
      Padding(padding: EdgeInsets.only(bottom:150,)),
      Text("version.1.0.0", style: TextStyle(fontSize: 11, color: Colors.black26),),
    ],
  ),

),

    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Text("Welcome to SHIFA HUB"),
      ),
    );
  }
}





