import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:vma_autohub/FirstPage.dart';
import 'user.dart';
import 'Sign up.dart';
import 'main.dart';


class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  final user =  FirebaseAuth.instance;
   String  email;
   String password;

  Widget build(BuildContext context) {
    return Scaffold(
           body: Stack(
               fit: StackFit.expand,
                children: <Widget>[
                  Image(image: AssetImage("assets/car1.jpeg"),
                    fit: BoxFit.cover,
                    colorBlendMode: BlendMode.softLight,
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 35,left: 330),
                        child: Container(
                          height: 40,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.close),
                                color: Colors.black,
                                onPressed: (){
                                   Navigator.push(context,
                                     PageTransition(
                                         type: PageTransitionType.rightToLeftWithFade,
                                         child: Main(),
                                     ),
                                   );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SingleChildScrollView(
                        child: Container(
                          height: 400.0,
                          width: 380.0,
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.0,
                            vertical: 25.0,
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 40.0,
                                ),
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Email",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                                onChanged: (value){
                                   setState(() {
                                       email=value;
                                   });
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 20.0,
                                ),
                              ),
                              TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontSize: 20.0,
                                ),
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Colors.white,
                                  contentPadding: EdgeInsets.all(15.0),
                                ),
                                onChanged: (value){
                                  setState(() {
                                    password=value;
                                  });
                                },
                                obscureText: true,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 06.0,
                                  left: 201.0,
                                ),
                                child: InkWell(
                                  child: Text("Forget Password",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 06.0,
                                ),
                              ),
                              MaterialButton(
                                onPressed: (){
                                   FirebaseAuth.instance.signInWithEmailAndPassword(
                                       email: email,
                                       password: password)
                                       .then((FirebaseUser){
                                     Navigator.push(context,
                                       PageTransition(
                                         type: PageTransitionType.fade,
                                         child: Firstpage(),
                                       ),
                                     );
                                   })
                                       .catchError((e){
                                     if (e.code == 'user-not-found') {
                                       print('No user found for that email.');
                                     } else if (e.code == 'wrong-password') {
                                       print('Wrong password provided for that user.');
                                     }
                                   });
                                },
                                color: Colors.black,
                                hoverColor: Colors.black,
                                minWidth: 319.0,
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 5.0,
                                ),
                              ),
                              MaterialButton(
                                onPressed: (){
                                  signInWithGoogle();
                                  },
                                color: Colors.red,
                                hoverColor: Colors.black,
                                minWidth: 300.0,
                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                child: Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 65.0,
                                      ),
                                    ),
                                    Image(image: AssetImage("assets/google-plus4.png"),
                                      height: 20,
                                      width: 40,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: 01.0,
                                      ),
                                    ),
                                    Text("Sign in With Google",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 6.0,
                                ),
                              ),
                              InkWell(
                                child: Text("Sign Up",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                onTap: (){
                                  Navigator.push(context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: SignUp(),
                                    ),
                                  );
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
           ),
    );
  }
}
