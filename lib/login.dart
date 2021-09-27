import 'package:flutter/material.dart';
import 'package:shifaaut/loginScreen.dart';
import 'package:shifaaut/signupScreen.dart';


class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
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
            elevation: 5,
              child: Text("Submit"),
              onPressed:(){

              }),
        ],

      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
appBar: AppBar(
  title: Text("----------------------------------",style: TextStyle(color: Colors.black, fontSize: 30),),
  backgroundColor: Colors.white,
  centerTitle: true,
  elevation: 0,
),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
              SizedBox(height: 50,),
              Text("SHIFA HUB",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.lightBlueAccent),),
              SizedBox(height: 50,),
              Padding(padding: EdgeInsets.all(10)),

              Image.asset('assets/LogoSample_ByTailorBrands.jpg'),
              Padding(padding: EdgeInsets.all(10)),
              MaterialButton(
                  child: Text("Log In"),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                  minWidth: 200.0,
                  height: 35,
                  color: Colors.lightBlueAccent,
                  onPressed: (){
                    //LogInScreen2();
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LogInScreen2()));
                  }),
              SizedBox(height: 15,),
              Text("OR"),
              SizedBox(height: 15,),
              MaterialButton(
                  child: Text("Sign Up"),
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                  minWidth: 200.0,
                  height: 35,
                  color: Colors.white,
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignUpScreen()));
                  }),
              SizedBox(height: 15,),
              Text("version.1.0.0", style: TextStyle(fontSize: 11, color: Colors.black26),),

            ],

          ),
        ),
      ),
    );
  }
}
