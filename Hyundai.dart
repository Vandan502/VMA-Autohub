import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Modified.dart';
import 'About.dart';
import 'Advice.dart';
import 'Tata.dart';
import 'Honda.dart';
import 'Kia.dart';
import 'Volkswagen.dart';
import 'Ford.dart';
import 'Mahindra.dart';
import 'Mg.dart';

class Hyundai extends StatefulWidget {
  @override
  _HyundaiState createState() => _HyundaiState();
}

class _HyundaiState extends State<Hyundai> {

  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                  duration: Duration(milliseconds: 200),
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
                              Padding(padding: EdgeInsets.only(top: 10),
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Santro",
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
                                                  image: AssetImage('assets/i10.jpg'),
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
                                          new SizedBox(
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "i10",
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
                                                  image: AssetImage('assets/Aura.jpg'),
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
                                                        child: Aura(),
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
                                            "Aura",
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
                                                  image: AssetImage('assets/i20.jpg'),
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
                                                        child: I20(),
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
                                            "i20",
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Venue",
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
                                                  image: AssetImage('assets/verna.jpg'),
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
                                                        child: Verna(),
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
                                            "Verna",
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Creta",
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
                                                  image: AssetImage('assets/elantra.jpg'),
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
                                                        child: Elantra(),
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
                                            "Elantra",
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Tucson",
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
                                                  image: AssetImage('assets/kona.jpg'),
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
                                                        child: Kona(),
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
                                            "Kona Electric",
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


class Santro extends StatefulWidget {
  const Santro({Key key}) : super(key: key);

  @override
  _SantroState createState() => _SantroState();
}

class _SantroState extends State<Santro> {
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
                  Text("Santro",
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
                  Image(image: AssetImage("assets/santro1.jpeg")),
                  Image(image: AssetImage("assets/santro2.jpeg")),
                  Image(image: AssetImage("assets/santro3.jpeg")),
                  Image(image: AssetImage("assets/santro4.jpg")),
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
                              Text("05.33L",
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
                                  Text("16.02 seconds",
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
                                  Text("156 kmph",
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
                                  Text("20km/l",
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
                                  Text("35-70 Leters",
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
                                Text("Era Executive",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 5.33L",
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
                                Text("Magna",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 5.86L",
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
                                Text("Sportz",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.25L",
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
                                Text("Magna AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.39L",
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
                                Text("Magna CNG",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, CNG, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.65L",
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
                                Text("Asta",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.67L",
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
                                Text("Sportz AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.72L",
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
                                Text("Sportz CNG",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, CNG, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.79L",
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
                                Text("Asta AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1086cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.18L",
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
                                Image(image: AssetImage("assets/santro5.jpg"),
                                ),
                                Text("Star Dust",
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
                                Image(image: AssetImage("assets/santro6.jpg"),
                                ),
                                Text("Diana Green",
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
                                Image(image: AssetImage("assets/santro7.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/santro8.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/santro9.jpg"),
                                ),
                                Text("Mariana Blue",
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
                                Image(image: AssetImage("assets/santro10.jpg"),
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
                                Image(image: AssetImage("assets/santro11.jpg"),
                                ),
                                Text("Imperial Beige",
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
                                            image: AssetImage('assets/i10.jpg'),
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
                                    new SizedBox(
                                      height: 02.0,
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
                                            image: AssetImage('assets/tiago.jpg'),
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
                                      "Price - 5.62L",
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


class I10 extends StatefulWidget {
  const I10({Key key}) : super(key: key);

  @override
  _I10State createState() => _I10State();
}

class _I10State extends State<I10> {
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
                  Text("Grand i10 Nios",
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
                  Image(image: AssetImage("assets/i101.jpg")),
                  Image(image: AssetImage("assets/i102.jpeg")),
                  Image(image: AssetImage("assets/i103.jpg")),
                  Image(image: AssetImage("assets/i104.jpg")),
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
                              Text("05.89L",
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
                                  Text("12.09 seconds",
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
                                  Text("151 kmph",
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
                                  Text("17.49km/l",
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
                                  Text("43 Leters",
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
                                Text("Era 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 5.89L",
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
                                Text("Magna 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.72L",
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
                                Text("Sportz 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.40L",
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
                                Text("Magna AMT 1.2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Kappa VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.40L",
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
                                Text("Magna 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT CNG",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, CNG, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.65L",
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
                                Text("Sportz 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT Dual Tone",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.72L",
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
                                Text("Magna U2 1.2 CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1186cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.98L",
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
                                Text("Sportz AMT 1.2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Kappa VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.06L",
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
                                Text("Asta 1.2 Kappa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.22L",
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
                                Image(image: AssetImage("assets/i105.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/i106.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/i107.jpg"),
                                ),
                                Text("Sleek Silver",
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
                                Image(image: AssetImage("assets/i108.jpg"),
                                ),
                                Text("Mariana Blue",
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
                                Image(image: AssetImage("assets/i109.jpg"),
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
                                Image(image: AssetImage("assets/i110.jpg"),
                                ),
                                Text("Titan Gray Metallic",
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
                                            image: AssetImage('assets/tiago.jpg',
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
                                                  child: Tiago(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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
                                      "Price - 5.62L",
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
                                            image: AssetImage('assets/i20.jpg'),
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
                                                  child: I20(),
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
                                      "Hyundai i20",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.65L",
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
                                            image: AssetImage('assets/altroz.jpg'),
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
                                                  child: Altroz(),
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
                                      "Tata Altroz",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 6.51L",
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
                                            image: AssetImage('assets/Aura.jpg'),
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
                                                  child: Aura(),
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
                                      "Hyundai Aura",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 6.70L",
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


class Aura extends StatefulWidget {
  const Aura({Key key}) : super(key: key);

  @override
  _AuraState createState() => _AuraState();
}

class _AuraState extends State<Aura> {
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
                  Text("Aura",
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
                  Image(image: AssetImage("assets/aura1.jpeg")),
                  Image(image: AssetImage("assets/aura2.jpg")),
                  Image(image: AssetImage("assets/aura3.jpg")),
                  Image(image: AssetImage("assets/aura4.jpg")),
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
                              Text("06.70L",
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
                                  Text("13.83 seconds",
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
                                  Text("17.52km/l",
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
                                Text("E 1.2 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 6.70L",
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
                                Text("S 1.2 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.57L",
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
                                Text("S 1.2 AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.11L",
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
                                Text("SX 1.2 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.32L",
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
                                Text("S 1.2 CNG Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, CNG, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.42L",
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
                                Text("S 1.2 CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1186cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.80L",
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
                                Text("SX 1.2(O)Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.96L",
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
                                Text("SX Plus 1.2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("AMT Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, AMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.17L",
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
                                Text("S 1.2 AMT CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1186cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.37L",
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
                                Image(image: AssetImage("assets/aura5.jpg"),
                                ),
                                Text("Vintage Brown",
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
                                Image(image: AssetImage("assets/aura6.jpg"),
                                ),
                                Text("Typhoon Silver Turbo Pack",
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
                                Image(image: AssetImage("assets/aura7.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/aura8.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/aura9.jpg"),
                                ),
                                Text("Alpha Blue",
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
                                Image(image: AssetImage("assets/aura10.jpg"),
                                ),
                                Text("Fiery Red Turbo Pack",
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
                                Image(image: AssetImage("assets/aura11.jpg"),
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
                                            image: AssetImage('assets/tiago.jpg',
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
                                                  child: Tiago(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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
                                      "Price - 5.62L",
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
                                            image: AssetImage('assets/i20.jpg'),
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
                                                  child: I20(),
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
                                      "Hyundai i20",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.65L",
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
                                            image: AssetImage('assets/altroz.jpg'),
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
                                                  child: Altroz(),
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
                                      "Tata Altroz",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 6.51L",
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
                                            image: AssetImage('assets/Aura.jpg'),
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
                                                  child: Aura(),
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
                                      "Hyundai Aura",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 6.70L",
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


class I20 extends StatefulWidget {
  const I20({Key key}) : super(key: key);

  @override
  _I20State createState() => _I20State();
}

class _I20State extends State<I20> {
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
                  Text("i20",
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
                  Image(image: AssetImage("assets/i201.jpg")),
                  Image(image: AssetImage("assets/i202.jpg")),
                  Image(image: AssetImage("assets/i203.jpg")),
                  Image(image: AssetImage("assets/i204.jpg")),
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
                              Text("07.65L",
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
                                  Text("11.09 seconds",
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
                                  Text("154 kmph",
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
                                  Text("20.35km/l",
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
                                  Text("37 Leters",
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
                                Text("Magna 1.2 MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.65L",
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
                                Text("Sportz 1.2 MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.56L",
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
                                Text("Sportz 1.2 MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Dual Tone",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.73L",
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
                                Text("Magna 1.5 MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.16L",
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
                                Text("Sportz 1.2 IVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.68L",
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
                                Text("Sportz 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("IMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.75L",
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
                                Text("Asta 1.2 MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.80L",
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
                                Text("Sportz 1.2 IVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Dual Tone",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.85L",
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
                                Text("Sportz 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("IMT Dual Tone",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.91L",
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
                                Image(image: AssetImage("assets/i205.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/i206.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/i207.jpg"),
                                ),
                                Text("Metallic Copper",
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
                                Image(image: AssetImage("assets/i208.jpg"),
                                ),
                                Text("Fiery Red Turbo",
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
                                Image(image: AssetImage("assets/i209.jpg"),
                                ),
                                Text("Starry Night",
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
                                Image(image: AssetImage("assets/i210.jpg"),
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
                                Image(image: AssetImage("assets/i211.jpg"),
                                ),
                                Text("Polar White With Black Roof",
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
                                Image(image: AssetImage("assets/i212.jpg"),
                                ),
                                Text("Titan Grey",
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
                                Image(image: AssetImage("assets/i213.jpg"),
                                ),
                                Text("Fiery Red With Black Roof",
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
                                            image: AssetImage('assets/tiago.jpg',
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
                                                  child: Tiago(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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
                                      "Price - 5.62L",
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
                                            image: AssetImage('assets/i10.jpg'),
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
                                    new SizedBox(
                                      height: 02.0,
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
                                            image: AssetImage('assets/altroz.jpg'),
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
                                                  child: Altroz(),
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
                                      "Tata Altroz",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 6.51L",
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
                                      "Vokswagen Polo",
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
                                      "Price - 7.69L",
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
                                            image: AssetImage('assets/amaze.jpg'),
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
                                                  child: Amaze(),
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
                                      "Honda Amaze",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.01L",
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



class Venue extends StatefulWidget {
  const Venue({Key key}) : super(key: key);

  @override
  _VenueState createState() => _VenueState();
}

class _VenueState extends State<Venue> {
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
                  Text("Venue",
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
                  Image(image: AssetImage("assets/venue1.jpeg")),
                  Image(image: AssetImage("assets/venue2.jpeg")),
                  Image(image: AssetImage("assets/venue3.jpg")),
                  Image(image: AssetImage("assets/venue4.jpg")),
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
                              Text("07.73L",
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
                                  Text("13.25 seconds",
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
                                  Text("17.52km/l",
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
                                Text("E 1.2 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 7.73L",
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
                                Text("S 1.2 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 8.55L",
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
                                Text("E 1.5 CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.34L",
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
                                Text("S Plus 1.2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.53L",
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
                                Text("S 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.67L",
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
                                Text("S 1.5 CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.33L",
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
                                Text("S 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("DCT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.80L",
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
                                Text("SX 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.04L",
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
                                Text("SX 1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("iMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.04L",
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
                                Image(image: AssetImage("assets/venue5.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/venue6.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/venue7.jpg"),
                                ),
                                Text("Polar White Dual Tone",
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
                                Image(image: AssetImage("assets/venue8.jpg"),
                                ),
                                Text("Deep Forest",
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
                                Image(image: AssetImage("assets/venue9.jpg"),
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
                                Image(image: AssetImage("assets/venue10.jpg"),
                                ),
                                Text("Titan Grey",
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
                                Image(image: AssetImage("assets/venue11.jpg"),
                                ),
                                Text("Denim Blue",
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
                                            image: AssetImage('assets/sonet.jpeg',
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
                                                  child: Sonet(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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
                                      "Price - 7.69L",
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
                                      "Price - 8.03L",
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
                                            image: AssetImage('assets/i20.jpg'),
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
                                                  child: I20(),
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
                                      "Hyundai i20",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.65L",
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
                                      "Price - 9.11L",
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


class Verna extends StatefulWidget {
  const Verna({Key key}) : super(key: key);

  @override
  _VernaState createState() => _VernaState();
}

class _VernaState extends State<Verna> {
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
                  Text("Verna",
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
                  Image(image: AssetImage("assets/verna1.jpeg")),
                  Image(image: AssetImage("assets/verna2.jpg")),
                  Image(image: AssetImage("assets/verna3.jpg")),
                  Image(image: AssetImage("assets/verna4.jpg")),
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
                              Text("10.23L",
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
                                  Text("13.09 seconds",
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
                                  Text("240 kmph",
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
                                  Text("19.2km/l",
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
                                Text("E 1.5 VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.23L",
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
                                Text("S Plus 1.5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.67L",
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
                                Text("S Plus 1.5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.10L",
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
                                Text("SX 1.5 VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.28L",
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
                                Text("SX 1.5 VTVT IVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.62L",
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
                                Text("SX 1.5 CRDi",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.63L",
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
                                Text("SX(O)1.5 VTVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.33L",
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
                                Text("SX 1.5 CRDi AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.90L",
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
                                Text("SX(O)1.0 Turbo",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("DCT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 15.68L",
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
                                Image(image: AssetImage("assets/verna5.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/verna6.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/verna7.jpg"),
                                ),
                                Text("Phantom Black",
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
                                Image(image: AssetImage("assets/verna8.jpg"),
                                ),
                                Text("Starry Night",
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
                                Image(image: AssetImage("assets/verna9.jpg"),
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
                                Image(image: AssetImage("assets/verna10.jpg"),
                                ),
                                Text("Titan Grey",
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
                                            image: AssetImage('assets/all new city.jpg',
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
                                                  child: Anc(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Honda All New City",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 12.22L",
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
                                            image: AssetImage('assets/city.jpg'),
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
                                                  child: City(),
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
                                      "Honda City",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 10.28L",
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
                                            image: AssetImage('assets/i20.jpg'),
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
                                                  child: I20(),
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
                                      "Hyundai i20",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 7.65L",
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
                                            image: AssetImage('assets/vento.jpeg'),
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
                                                  child: Vento(),
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
                                      "Volkswagen Vento",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 11.04L",
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


class Creta extends StatefulWidget {
  const Creta({Key key}) : super(key: key);

  @override
  _CretaState createState() => _CretaState();
}

class _CretaState extends State<Creta> {
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
                  Text("Creta",
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
                  Image(image: AssetImage("assets/creta1.jpg")),
                  Image(image: AssetImage("assets/creta2.jpg")),
                  Image(image: AssetImage("assets/creta3.jpg")),
                  Image(image: AssetImage("assets/creta4.jpg")),
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
                              Text("11.28L",
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
                                  Text("09.02 seconds",
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
                                  Text("165 kmph",
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
                                  Text("50 Leters",
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
                                Text("E 1.5 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.28L",
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
                                Text("E 1.5 Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 11.77L",
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
                                Text("EX 1.5 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 12.27L",
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
                                Text("EX 1.5 Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.31L",
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
                                Text("S 1.5 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.62L",
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
                                Text("S 1.5 Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 14.71L",
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
                                Text("SX 1.5 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 15.57L",
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
                                Text("SX 1.5 Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 16.66L",
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
                                Text("SX 1.5 Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("CVT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 17.23L",
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
                                Image(image: AssetImage("assets/creta5.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/creta6.jpg"),
                                ),
                                Text("Red Mulberry",
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
                                Image(image: AssetImage("assets/creta7.jpg"),
                                ),
                                Text("Phantom Black",
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
                                Image(image: AssetImage("assets/creta8.jpg"),
                                ),
                                Text("Galaxy Blue",
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
                                Image(image: AssetImage("assets/creta9.jpg"),
                                ),
                                Text("Lava Orange Dual Tone",
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
                                Image(image: AssetImage("assets/creta10.jpg"),
                                ),
                                Text("Polar White Dual Tone",
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
                                Image(image: AssetImage("assets/creta11.jpg"),
                                ),
                                Text("Deep Forest",
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
                                Image(image: AssetImage("assets/creta12.jpg"),
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
                                            image: AssetImage('assets/seltos.jpeg',
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
                                      "Price - 7.69L",
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
                                      "Price - 8.03L",
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
                                      "Price - 9.11L",
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
                                            image: AssetImage('assets/verna.jpg'),
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
                                                  child: Verna(),
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
                                      "Hyundai Verna",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 10.23L",
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


class Elantra extends StatefulWidget {
  const Elantra({Key key}) : super(key: key);

  @override
  _ElantraState createState() => _ElantraState();
}

class _ElantraState extends State<Elantra> {
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
                  Text("Elantra",
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
                  Image(image: AssetImage("assets/elantra1.jpeg")),
                  Image(image: AssetImage("assets/elantra2.jpg")),
                  Image(image: AssetImage("assets/elantra3.jpeg")),
                  Image(image: AssetImage("assets/elantra4.jpg")),
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
                              Text("20.07L",
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
                                  Text("12 seconds",
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
                                  Text("210 kmph",
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
                                  Text("50 Leters",
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
                                Text("2.0 SX MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1999cc, Petrol, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 20.07L",
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
                                Text("1.5 SX MT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 20.99L",
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
                                Text("2.0 SX AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1999cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 21.21L",
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
                                Text("2.0 SX(O) AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1999cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 22.55L",
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
                                Text("1.5 SX(O)AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1493cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 23.46L",
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
                                Image(image: AssetImage("assets/elantra5.jpg"),
                                ),
                                Text("Fiery Red",
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
                                Image(image: AssetImage("assets/elantra6.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/elantra7.jpg"),
                                ),
                                Text("Phantom Black",
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
                                Image(image: AssetImage("assets/elantra8.jpg"),
                                ),
                                Text("Marine Blue",
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
                                Image(image: AssetImage("assets/elantra9.jpg"),
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
                                            image: AssetImage('assets/tucson.jpg',
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
                                                  child: Tucson(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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
                                            image: AssetImage('assets/verna.jpg'),
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
                                                  child: Verna(),
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
                                      "Hyundai Verna",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 10.23L",
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
                                            image: AssetImage('assets/all new city.jpg'),
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
                                                  child: Anc(),
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
                                      "Honda All New City",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 12.22L",
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
                                            image: AssetImage('assets/t-roc.jpg'),
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
                                                  child: Troc(),
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
                                      "Volkswagen T-Roc",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 23.71L",
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


class Tucson extends StatefulWidget {
  const Tucson({Key key}) : super(key: key);

  @override
  _TucsonState createState() => _TucsonState();
}

class _TucsonState extends State<Tucson> {
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
                  Text("Tucson",
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
                  Image(image: AssetImage("assets/tucson1.jpeg")),
                  Image(image: AssetImage("assets/tucson2.jpg")),
                  Image(image: AssetImage("assets/tucson3.jpg")),
                  Image(image: AssetImage("assets/tucson4.jpg")),
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
                              Text("25.26L",
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
                                  Text("16.14 seconds",
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
                                  Text("195 kmph",
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
                                  Text("12.95km/l",
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
                                  Text("62 Leters",
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
                                Text("GL(O) 2WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1999cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 25.26L",
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
                                Text("GLS 2WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Petrol",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1999cc, Petrol, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 27.11L",
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
                                Text("GL(O) 2WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1995cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 27.52L",
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
                                Text("GLS 2WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1995cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 28.99L",
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
                                Text("GLS 4WD AT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Diesel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1995cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 30.52L",
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
                                Image(image: AssetImage("assets/tucson5.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/tucson6.jpg"),
                                ),
                                Text("Phantom Black",
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
                                Image(image: AssetImage("assets/tucson7.jpg"),
                                ),
                                Text("Starry Night",
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
                                Image(image: AssetImage("assets/tucson8.jpg"),
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
                                            image: AssetImage('assets/t-roc.jpg',
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
                                                  child: Troc(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Volkswagen T-Roc",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 23.71L",
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
                                            image: AssetImage('assets/elantra.jpg'),
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
                                                  child: Elantra(),
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
                                      "Hyundai Elantra",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 20.07L",
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


class Kona extends StatefulWidget {
  const Kona({Key key}) : super(key: key);

  @override
  _KonaState createState() => _KonaState();
}

class _KonaState extends State<Kona> {
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
                  Text("Kona Electric",
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
                  Image(image: AssetImage("assets/kona1.jpg")),
                  Image(image: AssetImage("assets/kona2.jpg")),
                  Image(image: AssetImage("assets/kona3.jpg")),
                  Image(image: AssetImage("assets/kona4.jpg")),
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
                              Text("27.12L",
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
                                  Text("09.07 seconds",
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
                                  Text("167 kmph",
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
                                  Text("Range",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("452 km",
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
                                  Text("Battery",
                                    style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text("39.2 kWh",
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
                                Text("Premium",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Electric, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 27.12L",
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
                                Text("Premium Dual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Tone",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("Electric, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 27.33L",
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
                                Image(image: AssetImage("assets/kona5.jpg"),
                                ),
                                Text("Typhoon Silver",
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
                                Image(image: AssetImage("assets/kona6.jpg"),
                                ),
                                Text("Phantom Black",
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
                                Image(image: AssetImage("assets/kona7.jpg"),
                                ),
                                Text("Marine Blue",
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
                                Image(image: AssetImage("assets/kona8.jpg"),
                                ),
                                Text("Polar White Dual Tone",
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
                                Image(image: AssetImage("assets/kona9.jpg"),
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
                                            image: AssetImage('assets/t-roc.jpg',
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
                                                  child: Troc(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
                                    ),
                                    new Text(
                                      "Volkswagen T-Roc",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 23.71L",
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
                                            image: AssetImage('assets/elantra.jpg'),
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
                                                  child: Elantra(),
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
                                      "Hyundai Elantra",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 20.07L",
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

