import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
// import 'package:go_dutch/authentication/phone.dart';

import 'package:rive/rive.dart';

import 'signup.dart';

import 'package:animated_text_kit/animated_text_kit.dart';


class ForgetPasswordPage extends StatefulWidget {
  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPasswordPage> {
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();

  validateform() {
    if (!emailtextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "email is not correct!");
    } else if (passwordtextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "password is required!");
    } else {
      loginusernow();
    }
  }

  loginusernow() async {
    // showDialog(
    //     context: context,
    //     barrierDismissible: false,
    //     builder: (BuildContext c) {
    //       // return ProgressDialog(
    //       //   message: "Processing Please wait...",
    //       // );
    //       return ColorLoader2();
    //     });

  
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Colors.white,
      body: Stack( 
        alignment: Alignment.topCenter,
        children: [

          Positioned(
            top: 0,
            child: Container(
                    height:MediaQuery.of(context).size.height * 0.45,
                    width: MediaQuery.of(context).size.width * 0.45,
                    child: RiveAnimation.asset(
                      'assets/new_file.riv',
                    ),
                  ),
                ),




                  // Container(
                  //   height:MediaQuery.of(context).size.height * 1,
                  //   width: MediaQuery.of(context).size.width * 1,
                  //   color: Color.fromARGB(31, 255, 255, 255),
                  // ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [

                  
                    
                  
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.35,
                  ),


                

                  // const SizedBox(
                  //   height: MediaQuery.of(context).size.height*0.5,
                  // ),
                   const Align(
                    alignment: Alignment.centerLeft,
                    // child:   
                    //   TextLiquidFill(
                      
                    //     text: 'Login',
                    //     waveColor: Color(0xff0098e4),
                    //     boxBackgroundColor: Colors.white,
                    //     textStyle: TextStyle(
                    //       fontFamily: 'Poppins-SemiBold',
                    //       fontSize: 40,
                    //       fontWeight: FontWeight.bold,
                    //     ),
                    //     boxHeight: 100.0,
                    //     textAlign: TextAlign.left,
                    //   ),

                      

                    child: Text(
                      'Forgot Password?',
                      style: TextStyle( 
                        fontFamily: 'Poppins-SemiBold',
                        fontSize: 38,
                        color: Color(0xff0098e4),
                        height: 1.2

                      ),
                    ),
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.03,
                  ),

                  Text(
                    "Don't worry! It happens. Please enter the address associated with your account.",
                    style: TextStyle(
                      color: Colors.blueGrey.shade200,
                      fontFamily: "Poppins-Medium",
                      fontSize: 13,
                    ),
                  ),

                  
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.065,
                  ),

                  // Align(
                  //   alignment: Alignment.centerLeft,
                  //   child: Text(
                  //     "Lets Get Started!",
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontSize: 25,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontFamily: 'Mulish',
                  //       letterSpacing: 0,
                  //       height: 1,
                  //       decoration: TextDecoration.none,
                  //     ),
                  //   ),
                  // ),

                  TextField(
                    controller: emailtextEditingController,
                    keyboardType: TextInputType.emailAddress,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.email_rounded,
                          color: Color.fromARGB(255, 210, 210, 210),
                        ),
                        filled: true,
                        fillColor: Colors.white70,
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide:
                                BorderSide(color: Color.fromARGB(40, 0, 152, 228), width: 2)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20)),
                            borderSide: BorderSide(
                                color: Color(0xff0098e4), width: 2)),
                        hintText: "Email",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 210, 210, 210),
                            fontSize: 15,
                            fontFamily: 'Poppins-Regular')),
                  ),


                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.03,
                  ),


  


                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        validateform();
                        //Navigator.push(context, MaterialPageRoute(builder: (c)=> CarDetailScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                           
                              color: Color(0xff0098e4),
           
                          
                            borderRadius: BorderRadius.circular(15.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.8 , minHeight: 50.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Submit",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ),



                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),

                  
                
                  

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
