import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shifaaut/loginScreen.dart';
import 'package:shifaaut/pola.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _checkbox = false;
  TextEditingController emailcontroler=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //color: Colors.blue,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 20),
                  height: 150,
                  child: Image.asset('assets/logo1.PNG')),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 50,),
                        Text("Sign Up ", style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold),),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: TextField(
                            controller: emailcontroler,
                            keyboardType: TextInputType.text,

                            decoration: InputDecoration(



                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                              ),
                              labelText: "Enter Your Email to Continue",


                              labelStyle:TextStyle( color: Colors.white) ,
                              hintText: "Enter Valid Email Address",
                              hintStyle: TextStyle( color: Colors.white),

                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20),
                          child: TextField(
                            controller: emailcontroler,
                            keyboardType: TextInputType.text,

                            decoration: InputDecoration(



                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white
                                ),
                              ),
                              labelText: "Enter Your Password To Continue",


                              labelStyle:TextStyle( color: Colors.white) ,
                              hintText: "Kindly Enter Strong Password",
                              hintStyle: TextStyle( color: Colors.white),

                            ),
                          ),
                        ),


                        Row(
                          children: [
                            SizedBox(width: 20,),
                            Checkbox(
                              value: _checkbox,
                              onChanged: (value) {
                                setState(() {
                                  _checkbox = !_checkbox;
                                });
                              },
                            ),
                            Text('Check To Accept Our Terms and Policies', style: TextStyle(color: Colors.white),),

                          ],

                        ),



                        SizedBox(height: 15,),
                        MaterialButton(
                            child: Text("Sign Up"),
                            shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                            minWidth: 200.0,
                            height: 35,
                            color: Colors.white,
                            onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>PolaImage()));
                            }),
                        Row(

                          children: [
                            SizedBox(width: 10,),
                            SizedBox(height: 40,),
                            Text("Already Have and Account?"),
                            SizedBox(width: 120,),
                            GestureDetector(

                                child: Text("Forget Password", style: TextStyle(decoration: TextDecoration.underline, color: Colors.white)),
                                onTap: () {
                                  // do what you need to do when "Click here" gets clicked
                                }
                            )
                          ],
                        ),
                        Row(

                          children: [
                            SizedBox(width: 10,),
                            //SizedBox(height: 5,),


                            GestureDetector(

                                child: Text("Log In", style: TextStyle(decoration: TextDecoration.underline, color: Colors.white)),
                                onTap: () {
                                  // do what you need to do when "Click here" gets clicked
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>LogInScreen2()));
                                }
                            )
                          ],
                        ),
                      ],
                    ),

                  ),

                ),

              ),
              Text("version.1.0.0", style: TextStyle(fontSize: 11, color: Colors.black26),),
            ],
          ),
        ),
      ),
    );
  }
}
