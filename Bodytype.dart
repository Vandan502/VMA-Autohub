import 'package:flutter/material.dart';
import 'dart:math';
import 'package:page_transition/page_transition.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'About.dart';
import 'Advice.dart';
import 'Modified.dart';
import 'Honda.dart';
import 'Hyundai.dart';
import 'Tata.dart';
import 'Volkswagen.dart';
import 'Ford.dart';
import 'Mahindra.dart';
import 'Kia.dart';
import 'Mg.dart';

class Bodytype extends StatefulWidget {
  const Bodytype({Key key}) : super(key: key);

  @override
  _BodytypeState createState() => _BodytypeState();
}

class _BodytypeState extends State<Bodytype> {

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
                              SizedBox(height: 25.0),
                              Padding(padding: EdgeInsets.only(top: 02,left: 05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                              Container(
                                              width: 130.0,
                                              height: 135.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/sedan.jpg'),
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
                                                        child: Sedan(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text("Sedan"),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 07)),
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 130.0,
                                            height: 135.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/hatchback.jpg'),
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
                                                      child: Hatchback(),
                                                    ));
                                              },
                                              child: null,
                                            ),
                                          ),
                                          Text("Hatchback"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 7)),
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                           Container(
                                              width: 130.0,
                                              height: 135.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/suv.jpg'),
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
                                                        child: Suv(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                            Text("SUV"),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 07)),
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 130.0,
                                            height: 135.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/muv.jpg'),
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
                                                      child: Muv(),
                                                    ));
                                              },
                                              child: null,
                                            ),
                                          ),
                                          Text("MUV"),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 05),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 7)),
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                           Container(
                                              width: 130.0,
                                              height: 135.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/compact sedan.jpg'),
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
                                                        child: Compactsedan(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                            Text("Compact Sedan"),
                                        ],
                                      ),
                                    ),
                                     Padding(padding: EdgeInsets.only(left: 07)),
                                    Container(
                                      height: 170,
                                      width: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          Container(
                                            width: 130.0,
                                            height: 135.0,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: AssetImage('assets/compact suv.jpg'),
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
                                                      child: Compactsuv(),
                                                    ));
                                              },
                                              child: null,
                                            ),
                                          ),
                                          Text("Compact SUV"),
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


class Sedan extends StatefulWidget {
  const Sedan({Key key}) : super(key: key);

  @override
  _SedanState createState() => _SedanState();
}

class _SedanState extends State<Sedan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Column(
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
              Padding(padding: EdgeInsets.only(top: 5,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                            height: 0.0,
                          ),
                          new Text(
                            "Vento",
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
              Padding(padding: EdgeInsets.only(top: 5,left: 15),
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
                            height: 0.0,
                          ),
                          new Text(
                            "City",
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
                            height: 0.0,
                          ),
                          new Text(
                            "All New City",
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
            ],
        ),
    );
  }
}

class Hatchback extends StatefulWidget {
  const Hatchback({Key key}) : super(key: key);

  @override
  _HatchbackState createState() => _HatchbackState();
}

class _HatchbackState extends State<Hatchback> {
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
                          height: 0.0,
                        ),
                        new Text(
                          "Figo",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Polo",
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
                                image: AssetImage('assets/freestyle.jpg'),
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
                                      child: Freestyle(),
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
                          "Freestyle",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Tiago",
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
                          "Grand i10 Nios",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Altroz",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Figo",
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
                                image: AssetImage('assets/jazz.jpg'),
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
                                      child: Jazz(),
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
                          "Jazz",
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
    );
  }
}

class Suv extends StatefulWidget {
  const Suv({Key key}) : super(key: key);

  @override
  _SuvState createState() => _SuvState();
}

class _SuvState extends State<Suv> {
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
                          "Kia Seltos",
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
                          height: 0.0,
                        ),
                        new Text(
                          "MG Hector",
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
                          height: 0.0,
                        ),
                        new Text(
                          "MG Hector Plus",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Harrier",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Safari",
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
                                image: AssetImage('assets/ZS EV.jpg'),
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
                                      child: ZS(),
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
                          "ZS Electric",
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
                          height: 0.0,
                        ),
                        new Text(
                          "T-Roc",
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
                          "Kona",
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
                                image: AssetImage('assets/gloster.jpg'),
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
                        new SizedBox(
                          height: 0.0,
                        ),
                        new Text(
                          "Gloster",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Endeavour",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Tiguan AllSpace",
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
    );
  }
}


class Muv extends StatefulWidget {
  const Muv({Key key}) : super(key: key);

  @override
  _MuvState createState() => _MuvState();
}

class _MuvState extends State<Muv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
         body: Column(
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
                               height: 150,
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
    );
  }
}


class Compactsedan extends StatefulWidget {
  const Compactsedan({Key key}) : super(key: key);

  @override
  _CompactsedanState createState() => _CompactsedanState();
}

class _CompactsedanState extends State<Compactsedan> {
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
                                image: AssetImage('assets/tigor.jpg'),
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
                                      child: Tigor(),
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
                          "Tigor",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Amaze",
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
                                image: AssetImage('assets/aspire.jpg'),
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
                                      child: Aspire(),
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
                          "Aspire",
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
                                image: AssetImage('assets/tigor EV.jpg'),
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
                                      child: Tigorev(),
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
                          "Tigor Electric",
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
    );
  }
}


class Compactsuv extends StatefulWidget {
  const Compactsuv({Key key}) : super(key: key);

  @override
  _CompactsuvState createState() => _CompactsuvState();
}

class _CompactsuvState extends State<Compactsuv> {
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
                          "Kuv100 NXT",
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
                          height: 0.0,
                        ),
                        new Text(
                          "Nexon",
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
                          height: 0.0,
                        ),
                        new Text(
                          "EcoSport",
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
                                image: AssetImage('assets/Nexon EV.jpg'),
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
                                      child: Nexonev(),
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
                          "Nexon Electric",
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
    );
  }
}

