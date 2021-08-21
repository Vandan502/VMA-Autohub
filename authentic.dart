import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart';
import 'widget/loading_widget.dart';




class Authentic extends StatefulWidget {
  const Authentic({Key key}) : super(key: key);

  @override
  _AuthenticState createState() => _AuthenticState();
}

class _AuthenticState extends State<Authentic> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController = TextEditingController();
  String _buttonText = "Login";
  String _switchText = 'Don\'t have an account';

  bool _loading = false;

  void _validateFields(){
      if(_emailEditingController.text.isEmpty && _passwordEditingController.text.isEmpty){
        Fluttertoast.showToast(
            msg:'Please enter your email and Password',);

      }
      else if(_emailEditingController.text.isEmpty){
        Fluttertoast.showToast(
          msg:'Please enter your email',);

      }
      else if(_passwordEditingController.text.isEmpty){
        Fluttertoast.showToast(
          msg:'Please enter your Password',);

      }
      else{
        setState(() {
          _loading = true;
        });
          if(_buttonText=='Login')
            _login();
          else
            _register();
      }
  }
  void _moveToHomeScreen(){
    Navigator.of(context).pushReplacement(
       MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void _login(){
    FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailEditingController.text ,
      password: _passwordEditingController.text,
    )
        .then((UserCredential userCredential ){
          setState(() {
              _loading = false;
          });
      Fluttertoast.showToast(
        msg:'Login Successfully',

      );
      _moveToHomeScreen();
    }).catchError((e){
      setState(() {
        _loading = false;
      });
      Fluttertoast.showToast(
        msg: e.toString(),);
    });
  }
  void _register(){
          FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: _emailEditingController.text ,
              password: _passwordEditingController.text,
          )
              .then((UserCredential userCredential ){
            setState(() {
              _loading = false;
            });
               Fluttertoast.showToast(
               msg:'Registered Successfully',);
               _moveToHomeScreen();
          }).catchError((e){
            setState(() {
              _loading = false;
            });
            Fluttertoast.showToast(
              msg: e.toString(),);
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
            title: Text("Blog"),
         ),
          body: Padding(padding: EdgeInsets.all(20),
             child: SingleChildScrollView(
               child: Center(
                 child: Column(
                   children: <Widget>[
                     SizedBox(
                       height: 30,
                     ),
                     Image(image: AssetImage("assets/roll.jpg"),
                       width: 550,
                       height: 200,
                       fit: BoxFit.cover,
                     ),
                     SizedBox(
                       height: 30,
                     ),
                      TextField(
                        controller: _emailEditingController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                           labelText: "Email"
                        ),
                      ),
                     TextField(
                       controller: _passwordEditingController,
                       keyboardType: TextInputType.name,
                       decoration: InputDecoration(
                           labelText: "Password"
                       ),
                       obscureText: true,
                     ),
                      SizedBox(
                          height: 40,
                      ),
                     _loading ? circularProgress() :  GestureDetector(
                         onTap: _validateFields,
                        child: Container(
                           width: double.infinity,
                           height: 50,
                           color: Colors.blueAccent,
                           child: Center(
                              child: Text(_buttonText,
                                 style: TextStyle(
                                     fontSize: 18,
                                     color: Colors.white,
                                 ),
                              ),
                           ),
                        ),
                      ),
                        SizedBox(
                           height: 20,
                        ),
                        FlatButton(
                          onPressed: (){
                              setState(() {
                                if(_buttonText=='Login'){
                                  _buttonText = "Register";
                                  _switchText = 'Already have an account? Login';
                                }else{
                                  _buttonText = "Login";
                                  _switchText = 'Don\'t have an account? Register';
                                }

                              });
                          },
                           textColor: Colors.blueAccent,
                           child: Text(
                               _switchText,
                             style: TextStyle(
                                fontSize: 18,
                             ),
                           ),
                        ),
                   ],
                 ),
               ),
             ),
          ),

    );
  }
}
