
import 'package:flutter/material.dart';

import 'package:fluttertoast/fluttertoast.dart';

import 'package:rive/rive.dart';

import 'login.dart';

import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:get/get.dart';




TextEditingController cnictextEditingController = TextEditingController();

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String dropdownValue = "Male";
  TextEditingController nametextEditingController = TextEditingController();
  TextEditingController emailtextEditingController = TextEditingController();
  TextEditingController passwordtextEditingController = TextEditingController();
  TextEditingController phonetextEditingController = TextEditingController();

  validateform() async {
    if (nametextEditingController.text.length < 3) {
      Fluttertoast.showToast(msg: "name must be atleast 3 characters!!");
    } else if (!emailtextEditingController.text.contains("@")) {
      Fluttertoast.showToast(msg: "email is not correct!");
    } else if (passwordtextEditingController.text.length < 6) {
      Fluttertoast.showToast(msg: "password must be atleast 6 characters!!");
    } else if (phonetextEditingController.text.isEmpty) {
      Fluttertoast.showToast(msg: "phonenumber is mandatory!!");
    } else if (phonetextEditingController.text.length != 13) {
      Fluttertoast.showToast(msg: "phone number must be 11 numbers!");
    } else if (cnictextEditingController.text.length != 13) {
      Fluttertoast.showToast(msg: "cnic must be 13 numbers!");
    } else {
     
      // Navigator.push(context, MaterialPageRoute(builder: (c) => App()));

      // Navigator.push(
      //     context, MaterialPageRoute(builder: (c) => VerifyScreen()));
      // if (firebaseUser!.emailVerified) {
      //   Fluttertoast.showToast(msg: "Email verified");
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (c) => CarDetailScreen()));
      // } else {
      //   //delete the info
      //   removeinfo();
      // }
      // Navigator.push(
      //     context, MaterialPageRoute(builder: (c) => VerifyScreen()));
      // if (firebaseUser!.emailVerified) {
      //   Fluttertoast.showToast(msg: "Email verified");
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (c) => CarDetailScreen()));
      // } else {
      //   //delete the info
      //   removeinfo();
      // }
    }
  }

//   removeinfo() async {

//   }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(
            child: Container(
                    height:MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * 1,
                    child: RiveAnimation.asset(
                      'assets/statelife.riv',
                    ),
                  ),
          ),
          
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,

                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: const Text(
                  //     "Welcome to State Life",
                  //     textAlign: TextAlign.left,
                  //     style: TextStyle(
                  //       fontSize: 24,
                  //       color: Colors.black,
                  //       fontWeight: FontWeight.bold,
                  //       fontFamily: 'Mulish',
                  //       letterSpacing: 0,
                  //       height: 1,
                  //       decoration: TextDecoration.none,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   height: 8,
                  // ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: Text(
                  //     "Insurance",
                  //     textAlign: TextAlign.center,
                  //     style: TextStyle(
                  //       fontSize: 15,
                  //       color: Colors.grey,
                  //       fontWeight: FontWeight.normal,
                  //       fontFamily: 'Mulish',
                  //       letterSpacing: 0,
                  //       height: 1,
                  //       decoration: TextDecoration.none,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextLiquidFill(
                
                    text: 'SignUp',
                    waveColor: Color(0xff0098e4),
                    boxBackgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(
                      fontFamily: 'Poppins-SemiBold',
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    boxHeight: 101.0,
                    textAlign: TextAlign.left,
                  ),
                    
                  ),

                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child:  SizedBox(
                      height: MediaQuery.of(context).size.height*0.03,
                      child: DefaultTextStyle(
                        style: const TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mulish',
                          letterSpacing: 0,
                          height: 1,
                          decoration: TextDecoration.none,
                        ),
                        child: AnimatedTextKit(
                          animatedTexts: [
                            FadeAnimatedText('Create Account!'),
                            FadeAnimatedText('Do IT!'),
                            FadeAnimatedText('Do it RIGHT!!'),
                            FadeAnimatedText('Do it RIGHT NOW!!!'),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                    ),
                    // child: Text(
                    //   "Create Account!",
                    //   textAlign: TextAlign.center,
                    //   style: TextStyle(
                    //     fontSize: 25,
                    //     color: Color.fromARGB(87, 0, 0, 0),
                    //     fontWeight: FontWeight.bold,
                    //     fontFamily: 'Mulish',
                    //     letterSpacing: 0,
                    //     height: 1,
                    //     decoration: TextDecoration.none,
                    //   ),
                    // ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  TextField(
                    controller: nametextEditingController,
                    keyboardType: TextInputType.text,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
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
                        hintText: "Name",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 210, 210, 210),
                            fontSize: 15,
                            fontFamily: 'Poppins-Regular')),
                  ),
                  SizedBox(
                    height: 10,
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
                          Icons.email,
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
                          Icons.password,
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
                  TextField(
                    controller: phonetextEditingController,
                    keyboardType: TextInputType.phone,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
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
                        hintText: "+923010505202",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 210, 210, 210),
                            fontSize: 15,
                            fontFamily: 'Poppins-Regular')),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    controller: cnictextEditingController,
                    keyboardType: TextInputType.number,
                    enableSuggestions: false,
                    autocorrect: false,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                    decoration: const InputDecoration(

                        prefixIcon: Icon(
                          Icons.card_membership,
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
                        hintText: "CNIC",
                        hintStyle: TextStyle(
                            color: Color.fromARGB(255, 210, 210, 210),
                            fontSize: 15,
                            fontFamily: 'Poppins-Regular')),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  
                  Container(
                    height: 50.0,
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      onPressed: () {
                        validateform();
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: const EdgeInsets.all(0.0),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                            color: Color(0xff0098e4),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Container(
                          constraints:
                              BoxConstraints(maxWidth: 400, minHeight: 50.0),
                          alignment: Alignment.center,
                          child: const Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'Poppins-Regular'),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(35,0,35,0),
                    child: Row(
                      children: [
                        const Text(
                          'Already have an account?',
                          style: TextStyle(color: Colors.black),
                        ),

                                      
                        TextButton(
                          child: const Text(
                            "Login here",
                            style: TextStyle(
                              color: Color(0xff0098e4),
                              fontFamily: 'Poppins-SemiBold'
                              ),
                          ),
                          onPressed: () {
                          Get.to(() => LoginScreen(),transition: Transition.rightToLeft,
                          duration: Duration(seconds: 1)
                        );
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
