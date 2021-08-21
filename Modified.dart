import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';


class Modified extends StatefulWidget {
  const Modified({Key key}) : super(key: key);

  @override
  _ModifiedState createState() => _ModifiedState();
}

class _ModifiedState extends State<Modified> {

  sendMail() async {
    String username = 'solankivandan36@gmail.com';
    String password = 'V@nd@n,7226';

    // ignore: deprecated_member_use
    final smtpServer = gmail(username, password);
    final message = Message()
      ..from = Address(username)
      ..recipients.add(email)
      ..subject = 'VMA Autohub'
      ..text = 'VMA Autohub'
      ..html = "<h1 align='center'> Thanks!</h1>\n<h2 align='center'>For The Modified Requirements</h2>\n<p> Your Modified Requirements are accepted.</p>";

    try {
      final sendReport = await send(message, smtpServer);
      print('Message sent: ' + sendReport.toString());
    } on MailerException catch (e) {
      print('Message not sent.');
      for (var p in e.problems) {
        print('Problem: ${p.code}: ${p.msg}');
      }
    }
  }

  final _formKey = GlobalKey<FormState>();
  final _firestore = FirebaseFirestore.instance;
  String name;
  String email;
  String brand;
  String car;
  String requirements;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black,
         body: SingleChildScrollView(
             child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 25.0,left: 10.0),
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

                Column(
                  children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 70),
                          child:  Container(
                            padding: const EdgeInsets.all(40),
                            height: MediaQuery.of(context).size.height - 157.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
                            ),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: <Widget>[
                                   Text("Modified Requirements",
                                      style: TextStyle(
                                         fontSize: 35,
                                         fontWeight: FontWeight.bold,
                                      ),
                                   ),
                                    Padding(padding: EdgeInsets.only(top: 50)),
                                  TextFormField(
                                    validator: (val) => val.isEmpty ? 'Enter your name': null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Name",
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
                                      top: 12.0,
                                    ),
                                  ),
                                  TextFormField(
                                    validator: (val) => val.isEmpty ? 'Enter your name': null,
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
                                      top: 12.0,
                                    ),
                                  ),
                                  TextFormField(
                                    validator: (val) => val.isEmpty ? 'Enter a brand name': null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Brand",
                                      focusColor: Colors.white,
                                    ),
                                    onChanged: (value){
                                      setState(() {
                                        brand=value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.0,
                                    ),
                                  ),
                                  TextFormField(
                                    validator: (val) => val.isEmpty ? 'Enter a car name': null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "car",
                                      focusColor: Colors.white,
                                    ),
                                    onChanged: (value){
                                      setState(() {
                                        car=value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 12.0,
                                    ),
                                  ),
                                  TextFormField(
                                    validator: (val) => val.isEmpty ? 'Enter your requirements': null,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: "Requirements",
                                      focusColor: Colors.white,
                                    ),
                                    onChanged: (value){
                                      setState(() {
                                        requirements=value;
                                      });
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: 15.0,
                                    ),
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      _firestore.collection('Modified Requirements')
                                          .add({'name' : name,'email' : email, 'brand' : brand , 'car' : car, 'requirements' : requirements})
                                          .then((value) => {
                                        sendMail(),
                                      })
                                          .then((value) => {
                                        Navigator.pop(context),
                                      });
                                    },
                                    color: Colors.black,
                                    hoverColor: Colors.black,
                                    minWidth: 340.0,
                                    padding: EdgeInsets.symmetric(vertical: 12.0),
                                    child: Text(
                                      "Modified",
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
                          ),
                      ),

                  ],
                ),


                ],
             ),

         ),
    );
  }
}


