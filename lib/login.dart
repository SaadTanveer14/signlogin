import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
// import 'package:go_dutch/authentication/phone.dart';

import 'package:rive/rive.dart';
import 'package:signlogin/forgot_password.dart';

import 'signup.dart';

import 'package:animated_text_kit/animated_text_kit.dart';


class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [

                  
                    
                  
                  const SizedBox(
                    height: 250,
                  ),


                

                  // const SizedBox(
                  //   height: MediaQuery.of(context).size.height*0.5,
                  // ),
                   Align(
                    alignment: Alignment.centerLeft,
                    child:   
                      TextLiquidFill(
                      
                        text: 'Login',
                        waveColor: Color(0xff0098e4),
                        boxBackgroundColor: Colors.white,
                        textStyle: TextStyle(
                          fontFamily: 'Poppins-SemiBold',
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                        boxHeight: 100.0,
                        textAlign: TextAlign.left,
                      ),

                      

                    // child: Text(
                    //   'Login',
                    //   style: TextStyle( 
                    //     fontFamily: 'Poppins-SemiBold',
                    //     fontSize: 40,
                    //     color: Color(0xff0098e4),
                    //   ),
                    // ),
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
                  SizedBox(
                    height: 40,
                  ),
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
                    height: 10,
                  ),
                  TextField(
                    controller: passwordtextEditingController,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
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
                        hintText: "Password",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 210, 210, 210),
                            fontSize: 15,
                            fontFamily: 'Poppins-Regular')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      child: const Text(
                        "Forget Password?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 69, 129, 169),
                            fontFamily: 'Poppins-SemiBold'),
                      ),
                      onPressed: () {
                        Get.to(() => ForgetPasswordPage(),transition: Transition.zoom,
                        duration: Duration(seconds: 1)
                        );
                        // Navigator.push(
                        //     context, MaterialPageRoute(builder: (c) => ForgetPasswordPage()));
                      },
                    ),
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
                              BoxConstraints(maxWidth: 400.0, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: Text(
                            "Login",
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

                  
                  Padding(
                    padding:const EdgeInsets.fromLTRB(50,0,50,0),
                    child: Row(
                      children: [
                        
                        Text(
                          "Don't have an account?",
                          style: TextStyle(color: Colors.black),
                        ),

                      TextButton(
                      child: const Text(
                        "Register",
                        style: TextStyle(
                            color: Color(0xff0098e4),
                            fontFamily: 'Poppins-SemiBold'),
                      ),
                      
                      onPressed: () {
                        Get.to(() => SignUpScreen(),transition: Transition.zoom,
                        duration: Duration(seconds: 1)
                        );
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (c) => SignUpScreen()));
                      },
                    )
                      ],
                    ),
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
