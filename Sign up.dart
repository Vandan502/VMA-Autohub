import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SignUp());
}

class S1 extends StatelessWidget {
  const S1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: SignUp(),
    );
  }
}



class SignUp extends StatefulWidget {
  const SignUp({Key key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  final _formKey = GlobalKey<FormState>();
  final user =  FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  String name;
  String email;
  String password;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20.0,left: 10.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Image(image: AssetImage("assets/L4.jpg"),
            ),

            SizedBox(height: 10.0),
            Container(
              padding: const EdgeInsets.all(30),
              height: MediaQuery.of(context).size.height - 157.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(left: 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Register",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Text("Here",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 30.0,
                      ),
                    ),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              validator: (val) => val.isEmpty ? 'Enter your name': null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "First Name",
                                focusColor: Colors.white,
                              ),
                              onChanged: (value){
                                setState(() {
                                  name=value;
                                });
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                              ),
                            ),
                            TextFormField(
                              validator: (val) => val.isEmpty ? 'Enter your email': null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Email",
                                focusColor: Colors.white,
                              ),
                              onChanged: (value){
                                setState(() {
                                  email=value;
                                });
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                              ),
                            ),
                            TextFormField(
                              validator: (val) => val.length < 6 ? 'Enter a password 6+ chars long': null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "Password",
                                focusColor: Colors.white,
                              ),
                              obscureText: true,
                              onChanged: (value){
                                setState(() {
                                  password=value;
                                });
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 10.0,
                              ),
                            ),
                            TextFormField(validator: (val) => val.isEmpty ? 'Enter your password': null,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: " Confirm Password",
                                focusColor: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 20.0,
                              ),
                            ),
                            MaterialButton(
                              onPressed: () {
                                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                                      email: email, password: password)
                                      .then((signedInUser){
                                         _firestore.collection('users')
                                             .add({'email' : email, 'pass' : password,})
                                             .then((value){
                                              if(signedInUser!= null){
                                                 Navigator.push(context,
                                                   PageTransition(
                                                       type: PageTransitionType.fade,
                                                       child: Login(),
                                                   ),
                                                 );
                                              }
                                         })
                                         .catchError((e){
                                           if (e.code == 'weak-password') {
                                             print('The password provided is too weak.');
                                           } else if (e.code == 'email-already-in-use') {
                                             print('The account already exists for that email.');
                                           }
                                    });

                                  })
                                .catchError((e){
                                    print(e);
                                }
                                );
                              },

                              color: Colors.black,
                              hoverColor: Colors.black,
                              minWidth: 340.0,
                              padding: EdgeInsets.symmetric(vertical: 12.0),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
