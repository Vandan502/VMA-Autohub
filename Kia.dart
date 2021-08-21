import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'About.dart';
import 'Advice.dart';
import 'Modified.dart';
import 'Tata.dart';
import 'Hyundai.dart';
import 'Volkswagen.dart';
import 'Ford.dart';
import 'Mahindra.dart';
import 'Mg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Kia extends StatefulWidget {
  @override
  _KiaState createState() => _KiaState();
}

class _KiaState extends State<Kia> {

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
                            "Find New Cars",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: (){},
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Sonet",
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
                                            height: 0.0,
                                          ),
                                          new Text(
                                            "Seltos",
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
                                                  image: AssetImage('assets/carnival.jpg'),
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
                                                        child: Carnival(),
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
                                            "Carnival",
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


class Sonet extends StatefulWidget {
  const Sonet({Key key}) : super(key: key);

  @override
  _SonetState createState() => _SonetState();
}

class _SonetState extends State<Sonet> {
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
                  Text("Sonet",
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
                  Image(image: AssetImage("assets/sonet1.jpeg")),
                  Image(image: AssetImage("assets/sonet2.jpg")),
                  Image(image: AssetImage("assets/sonet3.jpeg")),
                  Image(image: AssetImage("assets/sonet4.jpg")),
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
                              Text("7.69L",
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
                                  Text("07.13 seconds",
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
                                  Text("182 kmph",
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
                                  Text("19km/l",
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
                                Text("HTE 1.2",
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
                                Text("Price - 7.69L",
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
                                Text("HTK 1.2",
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
                                Text("HTE 1.5",
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
                                Text("Price - 9.41L",
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
                                Text("HTK Plus 1.2",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1197cc, Petrol, manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 9.74L",
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
                                Text("HTK 1.5",
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
                                Text("Price - 10.44L",
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
                                Text("HTK Plus 1.0 iMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("998cc, Petrol, Clutchless Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 10.94L",
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
                                Text("HTK Plus 1.5",
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
                                Text("Price - 11.10L",
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
                                Image(image: AssetImage("assets/sonet5.jpg"),
                                ),
                                Text("Intense Red",
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
                                Image(image: AssetImage("assets/sonet6.jpg"),
                                ),
                                Text("Glacier White Pearl",
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
                                Image(image: AssetImage("assets/sonet7.jpg"),
                                ),
                                Text("Beige Gold With Aurora Black Pearl",
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
                                Image(image: AssetImage("assets/sonet8.jpg"),
                                ),
                                Text("Steel Silver",
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
                                Image(image: AssetImage("assets/sonet9.jpg"),
                                ),
                                Text("Aurora Black Pearl",
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
                                Image(image: AssetImage("assets/sonet10.jpg"),
                                ),
                                Text("Beige Gold",
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
                                Image(image: AssetImage("assets/sonet11.jpg"),
                                ),
                                Text("Intelligence Blue",
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
                                Image(image: AssetImage("assets/sonet12.jpg"),
                                ),
                                Text("Glacier White Pearl With Aurora Black Pearl",
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
                                Image(image: AssetImage("assets/sonet13.jpg"),
                                ),
                                Text("Gravity Gray",
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
                                            image: AssetImage('assets/venue.jpg',
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
                                                  child: Venue(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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


class Seltos extends StatefulWidget {
  const Seltos({Key key}) : super(key: key);

  @override
  _SeltosState createState() => _SeltosState();
}

class _SeltosState extends State<Seltos> {
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
                  Text("Seltos",
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
                  Image(image: AssetImage("assets/seltos1.jpg")),
                  Image(image: AssetImage("assets/seltos2.jpg")),
                  Image(image: AssetImage("assets/seltos3.jpeg")),
                  Image(image: AssetImage("assets/seltos4.jpg")),
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
                              Text("11.12L",
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
                                  Text("11.08 seconds",
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
                                  Text("170 kmph",
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
                                  Text("16-21km/l",
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
                                Text("HTE 1.5",
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
                                Text("Price - 11.12L",
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
                                Text("HTE 1.5 Diesel",
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
                                Text("Price - 11.78L",
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
                                Text("HTK 1.5",
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
                                Text("HTK Plus 1.5",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, manual",
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
                                Text("HTK 1.5 Diesel",
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
                                Text("HTK Plus 1.5 iMT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("1497cc, Petrol, Clutchless Manual",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 13.70L",
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
                                Text("HTK Plus 1.5 Diesel",
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
                                Text("Price - 14.59L",
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
                                Text("HTX 1.5",
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
                                Text("Price - 15.32L",
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
                                Text("HTK Plus AT 1.5 Diesel",
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
                                Text("Price - 15.65L",
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
                                Image(image: AssetImage("assets/seltos5.jpg"),
                                ),
                                Text("Intense Red",
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
                                Image(image: AssetImage("assets/seltos6.jpg"),
                                ),
                                Text("Punchy Orange",
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
                                Image(image: AssetImage("assets/seltos7.jpg"),
                                ),
                                Text("Glacier White Pearl",
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
                                Image(image: AssetImage("assets/seltos8.jpg"),
                                ),
                                Text("Punchy Orange With Clear White",
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
                                Image(image: AssetImage("assets/seltos9.jpg"),
                                ),
                                Text("Steel Silver",
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
                                Image(image: AssetImage("assets/seltos10.jpg"),
                                ),
                                Text("Aurora Black Pearl",
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
                                Image(image: AssetImage("assets/seltos11.jpg"),
                                ),
                                Text("Glacier White Pearl With Punchy Orange",
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
                                Image(image: AssetImage("assets/seltos12.jpg"),
                                ),
                                Text("Intelligence Blue",
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
                                Image(image: AssetImage("assets/seltos13.jpg"),
                                ),
                                Text("Steel Silver With Punchy Orange",
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
                                            image: AssetImage('assets/creta.jpg',
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
                                                  child: Creta(),
                                                ));
                                          },
                                          child: null,
                                        ),
                                      ),
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


class Carnival extends StatefulWidget {
  const Carnival({Key key}) : super(key: key);

  @override
  _CarnivalState createState() => _CarnivalState();
}

class _CarnivalState extends State<Carnival> {
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
                  Text("Carnival",
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
                  Image(image: AssetImage("assets/carnival1.jpg")),
                  Image(image: AssetImage("assets/carnival2.jpeg")),
                  Image(image: AssetImage("assets/carnival3.jpg")),
                  Image(image: AssetImage("assets/carnival4.jpg")),
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
                              Text("28.43L",
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
                                  Text("19.05 seconds",
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
                                  Text("170 kmph",
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
                                  Text("14.11km/l",
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
                                Text("Premium 7 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2199cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 28.43L",
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
                                Text("Premium 8 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2199cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 28.65L",
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
                                Text("Prestige 7 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2199cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 32.92L",
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
                                Text("Prestige 9 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2199cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 34.05L",
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
                                Text("Limousine 7 STR",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text("2199cc, Diesel, Automatic",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                Text("Price - 38.54L",
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
                                Image(image: AssetImage("assets/carnival5.jpg"),
                                ),
                                Text("Glacier White Pearl",
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
                                Image(image: AssetImage("assets/carnival6.jpg"),
                                ),
                                Text("Steel Silver",
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
                                Image(image: AssetImage("assets/carnival7.jpg"),
                                ),
                                Text("Aurora Black Pearl",
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
                                      height: 02.0,
                                    ),
                                    new Text(
                                      "Mahindra Alturas G4",
                                      style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Schyler',
                                      ),
                                    ),
                                    new Text(
                                      "Price - 31.71L",
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

