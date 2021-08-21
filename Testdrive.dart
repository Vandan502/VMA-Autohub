import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';


class Testdrive extends StatefulWidget {
  const Testdrive({Key key}) : super(key: key);

  @override
  _TestdriveState createState() => _TestdriveState();
}

class _TestdriveState extends State<Testdrive> {

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
      ..html = "<h1 align='center'> Thanks!</h1>\n<h2 align='center'>For The Test Drive</h2>\n<p>Thank you very much for filling out our form. You've just join an amazing group. Your submission is recieved and We will contact you soon.</p>";

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
  String address;
  String email;
  String company;
  String car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
             children: <Widget>[
               Padding(padding: EdgeInsets.only(top: 20.0,left: 10.0),
                 child: Row(
                   children: <Widget>[
                     IconButton(
                       icon: Icon(Icons.arrow_back_ios),
                       color: Colors.black,
                       onPressed: (){
                         Navigator.pop(context);
                       },
                     ),
                   ],
                 ),
               ),
               Padding(padding: EdgeInsets.only(top: 160),),
               Container(
                   padding: const EdgeInsets.all(30),
                    child: Column(
                        children: <Widget>[
                          Form(
                            key: _formKey,
                            child: Column(
                              children: <Widget>[
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
                                    top: 10.0,
                                  ),
                                ),
                                TextFormField(
                                  validator: (val) => val.isEmpty ? 'Enter your address': null,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "address",
                                    focusColor: Colors.white,
                                  ),
                                  onChanged: (value){
                                    setState(() {
                                      address=value;
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
                                  validator: (val) => val.isEmpty ? 'Enter a brand name': null,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Brand",
                                    focusColor: Colors.white,
                                  ),
                                  onChanged: (value){
                                    setState(() {
                                      company=value;
                                    });
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: 10.0,
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
                                    top: 15.0,
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    _firestore.collection('Testdrive')
                                        .add({'name' : name, 'address': address, 'email' : email, 'company' : company, 'car' : car})
                                        .then((value) => {
                                      sendMail(),
                                    })
                                        .then((value) => {
                                          Navigator.pop(context),
                                    });
                                  },
                                  color: Colors.blue,
                                  hoverColor: Colors.black,
                                  minWidth: 340.0,
                                  padding: EdgeInsets.symmetric(vertical: 12.0),
                                  child: Text(
                                    "Book Now",
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

             ],
          ),
        ),
    );
  }
}
