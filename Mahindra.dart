import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'About.dart';
import 'Advice.dart';
import 'Modified.dart';
import 'Tata.dart';
import 'Hyundai.dart';
import 'Mg.dart';
import 'Kia.dart';
import 'Volkswagen.dart';
import 'Ford.dart';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:carousel_pro/carousel_pro.dart';

class Mahindra extends StatefulWidget {
  @override
  _MahindraState createState() => _MahindraState();
}

class _MahindraState extends State<Mahindra> {

  double value = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[400],
                  Colors.blue[800],
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              width: 200.0,
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage("applogo3.png"),
                          backgroundColor: Colors.black,
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "VMA Autohub",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            "Modified Requirements",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                duration: Duration(milliseconds: 200),
                                child: Modified(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Tips & Advice",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.scale,
                                duration: Duration(milliseconds: 200),
                                child: Advice(),
                              ),
                            );
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Company's Details",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            Navigator.push(context,
                                PageTransition(
                                  type: PageTransitionType.scale,
                                  duration: Duration(seconds: 1),
                                  child: About(),
                                ));
                          },
                        ),
                        ListTile(
                          title: Text(
                            "Log out",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){
                            FirebaseAuth.instance.signOut()
                                .then((value){
                              Navigator.pop(context);
                            })
                                .catchError((e){
                              print(e);
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value),
              duration: Duration(milliseconds: 100),
              builder: (_, double val, __){
                return(
                    Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.identity()
                        ..setEntry(3, 2, 0.001)
                        ..setEntry(0, 3, 200 * val)
                        ..rotateY((pi/6) * val),
                      child: Scaffold(
                        backgroundColor: Colors.black,
                        body: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.white,
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                    ),
                                    Container(
                                      width: 125.0,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15.0),
                              Padding(padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/kuv100.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Kuv100(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "KUV100 NXT",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 7)),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/bolero.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Bolero(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Bolero",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/XUV300.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Xuv300(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "XUV300",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 07)),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/thar.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Thar(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Thar",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/marazzo.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Marazzo(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Marazzo",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 7)),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/scorpio.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Scorpio(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Scorpio",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/MXUV500.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Xuv500(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "XUV500",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 7)),
                                    Container(
                                      height: 180,
                                      width: 180,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 150.0,
                                              height: 150.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/alturas 64.jpg'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Alturas64(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Alturas G4",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Schyler',
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
                      ),
                    ));
              }),
          GestureDetector(
            onHorizontalDragUpdate: (e) {
              if(e.delta.dx > 0) {
                setState(() {
                  value = 1;
                });
              } else {
                setState(() {
                  value = 0;
                });
              }
            },
          ),
        ],

      ),

    );
  }
}


class Kuv100 extends StatefulWidget {
  const Kuv100({Key key}) : super(key: key);

  @override
  _Kuv100State createState() => _Kuv100State();
}

class _Kuv100State extends State<Kuv100> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("KUV100 NXT",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/kuv1001.jpg")),
                  Image(image: AssetImage("assets/kuv1002.jpg")),
                  Image(image: AssetImage("assets/kuv1004.jpeg")),
                  Image(image: AssetImage("assets/kuv1006.jpg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                         color: Colors.black,
                      ),
                       child: Column(
                         children: <Widget>[
                           Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.white,
                               ),
                             ),
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.start,
                             children: <Widget>[
                               Padding(padding: EdgeInsets.only(left: 15)),
                               Text("6.76L",
                                 style: TextStyle(
                                   fontSize: 30,
                                   fontWeight: FontWeight.bold,
                                   color: Colors.white,
                                 ),
                               ),
                               Padding(padding: EdgeInsets.only(left: 5)),
                               Text("onwards",
                                 style: TextStyle(
                                   fontSize: 13,
                                   color: Colors.white,
                                 ),
                               ),
                             ],
                           ),
                         ],
                       ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("14.5 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("160 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("18km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("35 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("6",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("K2 Plus 6 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1198cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.76L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("K4 Plus 6 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1198cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.27L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("K6 Plus 6 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1198cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.18L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("K8 6 STR Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1198cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.20L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("K8 6 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1198cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.57L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1007.jpg"),
                                ),
                                Text("Dazzling Silver &",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text("Metallic Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1008.jpg"),
                                ),
                                Text("Designer Grey",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1009.jpg"),
                                ),
                                Text("Flamboyant Red &",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Text("Metallic Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1010.jpg"),
                                ),
                                Text("Flamboyant Red",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1011.jpg"),
                                ),
                                Text("Fiery Orange",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1012.jpg"),
                                ),
                                Text("Polar White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/kuv1013.jpg"),
                                ),
                                Text("Midnight Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
               children: <Widget>[
                  Container(
                     height: 500,
                     width: 400,
                      child: Column(
                         children: <Widget>[
                           Padding(padding: EdgeInsets.only(top: 10,left: 10),
                             child: Row(
                               children: <Widget>[
                                 Text("Alternatives",
                                   style: TextStyle(
                                     color: Colors.white,
                                     fontSize: 30,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ],
                             ),
                           ),
                            Padding(padding: EdgeInsets.only(top: 25, left: 10),
                               child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                 child: Row(
                                   children: <Widget>[
                                      Container(
                                        height: 250,
                                        width: 375,
                                        decoration: BoxDecoration(
                                           color: Colors.white,
                                           borderRadius: BorderRadius.circular(15),
                                        ),
                                         child: Column(
                                           mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              ClipOval(
                                                child: Container(
                                                  width: 350.0,
                                                  height: 180.0,
                                                  decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage('assets/i10.jpg',
                                                      ),
                                                    ),
                                                  ),
                                                  // ignore: deprecated_member_use
                                                  child: FlatButton(
                                                    padding: EdgeInsets.all(0),
                                                    onPressed: (){
                                                      Navigator.push(context,
                                                          PageTransition(
                                                            type: PageTransitionType.scale,
                                                            duration: Duration(milliseconds: 200),
                                                            child: I10(),
                                                          ));
                                                    },
                                                    child: null,
                                                  ),
                                                ),
                                              ),
                                              new Text(
                                                "Hyundai Grand i10 Nios",
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                              new Text(
                                                "Price - 5.89L",
                                                style: TextStyle(
                                                  fontSize: 21,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                            ],
                                         ),
                                      ),
                                     Padding(padding: EdgeInsets.only(left: 10)),
                                     Container(
                                       height: 250,
                                       width: 375,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           ClipOval(
                                             child: Container(
                                               width: 350.0,
                                               height: 180.0,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/figo.jpg'),
                                                 ),
                                               ),
                                               // ignore: deprecated_member_use
                                               child: FlatButton(
                                                 padding: EdgeInsets.all(0),
                                                 onPressed: (){
                                                   Navigator.push(context,
                                                       PageTransition(
                                                         type: PageTransitionType.scale,
                                                         duration: Duration(milliseconds: 200),
                                                         child: Figo(),
                                                       ));
                                                 },
                                                 child: null,
                                               ),
                                             ),
                                           ),
                                           new SizedBox(
                                             height: 02.0,
                                           ),
                                           new Text(
                                             "Ford Figo",
                                             style: TextStyle(
                                               fontSize: 25,
                                               fontWeight: FontWeight.bold,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                           new Text(
                                             "Price - 6.63L",
                                             style: TextStyle(
                                               fontSize: 21,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10)),
                                     Container(
                                       height: 250,
                                       width: 375,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           ClipOval(
                                             child: Container(
                                               width: 350.0,
                                               height: 180.0,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/polo.jpeg'),
                                                 ),
                                               ),
                                               // ignore: deprecated_member_use
                                               child: FlatButton(
                                                 padding: EdgeInsets.all(0),
                                                 onPressed: (){
                                                   Navigator.push(context,
                                                       PageTransition(
                                                         type: PageTransitionType.scale,
                                                         duration: Duration(milliseconds: 200),
                                                         child: Polo(),
                                                       ));
                                                 },
                                                 child: null,
                                               ),
                                             ),
                                           ),
                                           new SizedBox(
                                             height: 02.0,
                                           ),
                                           new Text(
                                             "Volkswagen Polo",
                                             style: TextStyle(
                                               fontSize: 25,
                                               fontWeight: FontWeight.bold,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                           new Text(
                                             "Price - 6.84L",
                                             style: TextStyle(
                                               fontSize: 21,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10)),
                                     Container(
                                       height: 250,
                                       width: 375,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           ClipOval(
                                             child: Container(
                                               width: 350.0,
                                               height: 180.0,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/santro.jpg'),
                                                 ),
                                               ),
                                               // ignore: deprecated_member_use
                                               child: FlatButton(
                                                 padding: EdgeInsets.all(0),
                                                 onPressed: (){
                                                   Navigator.push(context,
                                                       PageTransition(
                                                         type: PageTransitionType.scale,
                                                         duration: Duration(milliseconds: 200),
                                                         child: Santro(),
                                                       ));
                                                 },
                                                 child: null,
                                               ),
                                             ),
                                           ),
                                           new SizedBox(
                                             height: 02.0,
                                           ),
                                           new Text(
                                             "Hyundai Santro",
                                             style: TextStyle(
                                               fontSize: 25,
                                               fontWeight: FontWeight.bold,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                           new Text(
                                             "Price - 5.33L",
                                             style: TextStyle(
                                               fontSize: 21,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10)),
                                     Container(
                                       height: 250,
                                       width: 375,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           ClipOval(
                                             child: Container(
                                               width: 350.0,
                                               height: 180.0,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/tiago2.jpg'),
                                                 ),
                                               ),
                                               // ignore: deprecated_member_use
                                               child: FlatButton(
                                                 padding: EdgeInsets.all(0),
                                                 onPressed: (){
                                                   Navigator.push(context,
                                                       PageTransition(
                                                         type: PageTransitionType.scale,
                                                         duration: Duration(milliseconds: 200),
                                                         child: Tiago(),
                                                       ));
                                                 },
                                                 child: null,
                                               ),
                                             ),
                                           ),
                                           new SizedBox(
                                             height: 02.0,
                                           ),
                                           new Text(
                                             "Tata Tiago",
                                             style: TextStyle(
                                               fontSize: 25,
                                               fontWeight: FontWeight.bold,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                           new Text(
                                             "Price - 5.66L",
                                             style: TextStyle(
                                               fontSize: 21,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                     Padding(padding: EdgeInsets.only(left: 10)),
                                     Container(
                                       height: 250,
                                       width: 375,
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.center,
                                         children: <Widget>[
                                           ClipOval(
                                             child: Container(
                                               width: 350.0,
                                               height: 180.0,
                                               decoration: BoxDecoration(
                                                 image: DecorationImage(
                                                   image: AssetImage('assets/XUV300.jpg'),
                                                 ),
                                               ),
                                               // ignore: deprecated_member_use
                                               child: FlatButton(
                                                 padding: EdgeInsets.all(0),
                                                 onPressed: (){
                                                   Navigator.push(context,
                                                       PageTransition(
                                                         type: PageTransitionType.scale,
                                                         duration: Duration(milliseconds: 200),
                                                         child: Xuv300(),
                                                       ));
                                                 },
                                                 child: null,
                                               ),
                                             ),
                                           ),
                                           new SizedBox(
                                             height: 02.0,
                                           ),
                                           new Text(
                                             "Mahindra XUV300",
                                             style: TextStyle(
                                               fontSize: 25,
                                               fontWeight: FontWeight.bold,
                                               fontFamily: 'Schyler',
                                             ),
                                           ),
                                           new Text(
                                             "Price - 8.86L",
                                             style: TextStyle(
                                               fontSize: 21,
                                               fontFamily: 'Schyler',
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
               ],
            ),
          ],
        ),
      ),
    );
  }
}

class Bolero extends StatefulWidget {
  const Bolero({Key key}) : super(key: key);

  @override
  _BoleroState createState() => _BoleroState();
}

class _BoleroState extends State<Bolero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("BOLERO",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/bolero1.jpg")),
                  Image(image: AssetImage("assets/bolero2.jpg")),
                  Image(image: AssetImage("assets/bolero3.jpg")),
                  Image(image: AssetImage("assets/bolero4.jpeg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("9.31L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("30.3 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("117 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("17km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("60 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("7",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("B4",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.31L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("B6",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.13L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("B6 Opt",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.39L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/bolero5.jpg"),
                                ),
                                Text("Lake Side Brown",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/bolero6.jpg"),
                                ),
                                Text("Diamond White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/bolero7.jpg"),
                                ),
                                Text("Rocky Beige",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/bolero8.jpg"),
                                ),
                                Text("Feiry Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/scorpio.jpg',
                                            ),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Scorpio(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Mahindra Scorpio",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 13.95L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/thar.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Thar(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Thar",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.42L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/XUV300.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv300(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV300",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 8.86L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/xuv500.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv500(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV500",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.96L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/ecosport.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Ecosport(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Ford EcoSport",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 9.21L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/Nexon.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Nexon(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Nexon",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.92L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/venue.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Venue(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Venue",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.73L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Xuv300 extends StatefulWidget {
  const Xuv300({Key key}) : super(key: key);

  @override
  _Xuv300State createState() => _Xuv300State();
}

class _Xuv300State extends State<Xuv300> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("XUV300",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/xuv3001.jpg")),
                  Image(image: AssetImage("assets/xuv3002.jpg")),
                  Image(image: AssetImage("assets/xuv3003.jpeg")),
                  Image(image: AssetImage("assets/xuv3004.jpeg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("8.85L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("19.42 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("185 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("17-20km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("42 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("5",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W4",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.85L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W4",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.95L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W6",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.73L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W6 AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.44L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W6",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.50L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W8",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.50L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W6 AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.20L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W8 (O)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.76L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W8",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.80L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W8 (O) Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.93L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W8 (O) AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.49L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W8 (O)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.64L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.2 W8(O) AMT Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.65L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W8(O) Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.81L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W8(O) AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.37L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1.5 W8(O) AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.54L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3005.jpg"),
                                ),
                                Text("Pearl White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3006.jpg"),
                                ),
                                Text("Aquamarine",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3007.jpg"),
                                ),
                                Text("Dual-Tone Red Rage",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3008.jpg"),
                                ),
                                Text("Dual-Tone Aquamarine",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3009.jpg"),
                                ),
                                Text("Red Rage",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3010.jpg"),
                                ),
                                Text("D'Sat Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv3011.jpg"),
                                ),
                                Text("Napoli Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/Nexon.jpg',
                                            ),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Nexon(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Tata Nexon",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.92L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/ecosport.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Ecosport(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Ford EcoSport",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 9.21L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/venue.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Venue(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Venue",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.73L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/sonet.jpeg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Sonet(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Kia Sonet",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.58L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/creta.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Creta(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Creta",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Thar extends StatefulWidget {
  const Thar({Key key}) : super(key: key);

  @override
  _TharState createState() => _TharState();
}

class _TharState extends State<Thar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("Thar",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/thar1.jpeg")),
                  Image(image: AssetImage("assets/thar2.jpg")),
                  Image(image: AssetImage("assets/thar3.jpg")),
                  Image(image: AssetImage("assets/thar4.jpg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("11.31L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("19.5 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("155 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("15.2km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("57 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("4",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("AX Opt 4-Str",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Convert Top",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1997cc, Petrol Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.11L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("AX Opt 4-Str",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Convert Top Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.31L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("AX Opt 4-Str Hard",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.41L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LX 4-Str Hard Top",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1997cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.80L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LX 4-Str Convert",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.16L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LX 4-Str Hard",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.26L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LX 4-Str Convert",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1997cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.86L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(" LX 4-Str Hard",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1997cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.96L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(" LX 4-Str Convert",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Top Diesel AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.06L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("LX 4-Str Hard Top",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Diesel AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2184cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.16L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/thar5.jpg"),
                                ),
                                Text("Diamond White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/thar6.jpg"),
                                ),
                                Text("Mist Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/thar7.jpg"),
                                ),
                                Text("Red Rage",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/thar8.jpg"),
                                ),
                                Text("Rocky Beige",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/thar9.jpg"),
                                ),
                                Text("Fiery Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/scorpio.jpg',
                                            ),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Scorpio(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Mahindra Scorpio",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 14.07L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/bolero.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Bolero(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Bolero",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 9.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/creta.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Creta(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Creta",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/XUV300.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv300(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV300",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 8.85L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/MXUV500.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv500(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV500",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.96L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/safari.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Safari(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Safari",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.56L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/seltos.jpeg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Seltos(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Kia Seltos",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.5L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/harrier.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Harrier(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Harrier",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.9L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Marazzo extends StatefulWidget {
  const Marazzo({Key key}) : super(key: key);

  @override
  _MarazzoState createState() => _MarazzoState();
}

class _MarazzoState extends State<Marazzo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("Marazzo",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/marazzo1.jpg")),
                  Image(image: AssetImage("assets/marazzo2.jpg")),
                  Image(image: AssetImage("assets/marazzo3.jpeg")),
                  Image(image: AssetImage("assets/marazzo4.jpg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("12.03L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("26.60 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("145 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("17.33km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("45 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("7, 8",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.03L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M2 8Str",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.03L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M4 Plus",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.12L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M4 Plus 8Str",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.20L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M6 Plus",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.04L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("M6 Plus 8Str",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.12L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/marazzo5.jpg"),
                                ),
                                Text("Mariner Maroon",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/marazzo6.jpg"),
                                ),
                                Text("Iceberg White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/marazzo7.jpg"),
                                ),
                                Text("Shimmering Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/marazzo8.jpg"),
                                ),
                                Text("Oceanic Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/marazzo9.jpg"),
                                ),
                                Text("Aqua Marine",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/scorpio.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Scorpio(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Scorpio",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 14.07L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/MXUV500.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv500(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV500",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.96L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/safari.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Safari(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Safari",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.56L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/bolero.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Bolero(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Bolero",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 9.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/XUV300.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv300(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV300",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 8.85L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/thar.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Thar(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Thar",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.31L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Scorpio extends StatefulWidget {
  const Scorpio({Key key}) : super(key: key);

  @override
  _ScorpioState createState() => _ScorpioState();
}

class _ScorpioState extends State<Scorpio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("Scorpio",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/scorpio1.jpeg")),
                  Image(image: AssetImage("assets/scorpio2.jpg")),
                  Image(image: AssetImage("assets/scorpio3.jpg")),
                  Image(image: AssetImage("assets/scorpio4.jpg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("14.07L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("15 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("163.81 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("14km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("60 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("7",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("S3 Plus",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.07L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("S5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.62L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("S7",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 17.07L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("S9",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 17.69L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("S11",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 19.00L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                   style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/scorpio5.jpg"),
                                ),
                                Text("Pearl White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/scorpio6.jpg"),
                                ),
                                Text("Napoli Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/scorpio7.jpg"),
                                ),
                                Text("Molten Red",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/scorpio8.jpg"),
                                ),
                                Text("DSat Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/scorpio9.jpg"),
                                ),
                                Text("Diamond White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/MXUV500.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv500(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV500",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.96L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/creta.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Creta(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Creta",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/harrier.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Harrier(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Harrier",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.13L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/safari.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Safari(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Safari",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.56L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/bolero.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Bolero(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Bolero",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 9.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/marazzo.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Marazzo(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Marazzo",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 13.33L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/hectorplus.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Hectorplus(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "MG Hector Plus",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.19L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/thar.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Thar(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Thar",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.31L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Xuv500 extends StatefulWidget {
  const Xuv500({Key key}) : super(key: key);

  @override
  _Xuv500State createState() => _Xuv500State();
}

class _Xuv500State extends State<Xuv500> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("XUV500",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/xuv5001.jpeg")),
                  Image(image: AssetImage("assets/xuv5002.jpg")),
                  Image(image: AssetImage("assets/xuv5003.jpg")),
                  Image(image: AssetImage("assets/xuv5004.jpg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("15.96L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("12.55 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("185 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("15km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("70 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("7",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 15.96L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W7",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 17.43L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W7 AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 17.74L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W9",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 19.36L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W9 AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 19.62L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W11 Opt",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 21.07L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("W11 Opt At",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2179cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 21.29L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5005.jpg"),
                                ),
                                Text("Lake Side Brown",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5006.jpg"),
                                ),
                                Text("Pearl White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5007.jpg"),
                                ),
                                Text("Mystic Copper",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5008.jpg"),
                                ),
                                Text("Moondust Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5009.jpg"),
                                ),
                                Text("Crimson Red",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/xuv5010.jpg"),
                                ),
                                Text("Volcano Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/seltos.jpg',
                                            ),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Seltos(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Kia Seltos",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.12L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/hector.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Hector(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "MG Hector",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 14.70L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/safari.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Safari(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Safari",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.89L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/creta.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Creta(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Creta",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.28L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/harrier.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Harrier(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Harrier",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.13L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/scorpio.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Scorpio(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Scorpio",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 14.07L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/hectorplus.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Hectorplus(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "MG Hector Plus",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.19L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/thar.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Thar(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Thar",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.31L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class Alturas64 extends StatefulWidget {
  const Alturas64({Key key}) : super(key: key);

  @override
  _Alturas64State createState() => _Alturas64State();
}

class _Alturas64State extends State<Alturas64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
              child: Row(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                  Container(
                    width: 125.0,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25.0),
            Padding(padding: EdgeInsets.only(left: 20),
              child: Row(
                children: <Widget>[
                  Text("Alturas G4",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 25)),
            SizedBox(
              height: 220.0,
              width: 400.0,
              child: Carousel(
                images: [
                  Image(image: AssetImage("assets/alturas641.jpg")),
                  Image(image: AssetImage("assets/alturas642.jpg")),
                  Image(image: AssetImage("assets/alturas643.jpg")),
                  Image(image: AssetImage("assets/alturas644.jpeg")),
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.indigo,
                indicatorBgPadding: 2.0,
                borderRadius: true,
                moveIndicatorFromBottom: 180.0,
                noRadiusForIndicator: true,
              ),
            ),

            SizedBox(height: 45.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 60,
                      width: 165,
                      decoration: BoxDecoration(
                        color: Colors.black,
                      ),
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(right:100),
                            child: Text("IND",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(left: 15)),
                              Text("28.74L",
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 5)),
                              Text("onwards",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 150,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(padding: EdgeInsets.only(top: 10,left: 20),
                      child: Row(
                        children: <Widget>[
                          Text("Specifications",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10, left: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Acceleration",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("19.28 seconds",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Top Speed",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("129 kmph",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel economy",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("12.03km/l",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Fuel tank",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("70 Leters",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              height: 80,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text("Seating",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("7",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal,
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
            ),
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Versions",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("2WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2157cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 31.71L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 130,
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("4WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2157cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 34.97L",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                Text("On Road Price",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 260,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 10,left: 20),
                    child: Row(
                      children: <Widget>[
                        Text("Available Colors",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10, left: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/alturas645.jpg"),
                                ),
                                Text("Regal Blue",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/alturas646.jpg"),
                                ),
                                Text("Lake Side Brown",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/alturas647.jpg"),
                                ),
                                Text("Pearl White",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/alturas648.jpg"),
                                ),
                                Text("Napoli Black",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Image(image: AssetImage("assets/alturas649.jpg"),
                                ),
                                Text("Dsat Silver",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.normal,
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
            Padding(padding: EdgeInsets.only(top: 20)),
            Column(
              children: <Widget>[
                Container(
                  height: 500,
                  width: 400,
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10,left: 10),
                        child: Row(
                          children: <Widget>[
                            Text("Alternatives",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 25, left: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/gloster.jpg',
                                            ),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Gloster(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "MG Gloster",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 33.82L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/endeavour.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Endeavour(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Ford Endeavour",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 34.05L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/safari.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Safari(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Tata Safari",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 16.89L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/tucson.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Tucson(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Hyundai Tucson",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 25.26L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/tiguan.jpeg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Tiguan(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Volkswagen Tiguan AllSpace",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 39.98L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 10)),
                              Container(
                                height: 250,
                                width: 375,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    ClipOval(
                                      child: Container(
                                        width: 350.0,
                                        height: 180.0,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage('assets/MXUV500.jpg'),
                                          ),
                                        ),
                                        // ignore: deprecated_member_use
                                        child: FlatButton(
                                          padding: EdgeInsets.all(0),
                                          onPressed: (){
                                            Navigator.push(context,
                                                PageTransition(
                                                  type: PageTransitionType.scale,
                                                  duration: Duration(milliseconds: 200),
                                                  child: Xuv500(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new SizedBox(
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra XUV500",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 15.96L",
                                      style: TextStyle(
                                        fontSize: 21,
                                        fontFamily: 'Schyler',
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}





