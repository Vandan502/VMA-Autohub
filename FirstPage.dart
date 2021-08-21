import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/rendering.dart';
import 'package:page_transition/page_transition.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:vma_autohub/Hyundai.dart';
import 'package:vma_autohub/Kia.dart';
import 'Modified.dart';
import 'dart:math';
import 'About.dart';
import 'Advice.dart';
import 'Brands.dart';
import 'Bodytype.dart';
import 'Testdrive.dart';
import 'Tata.dart';



class Firstpage extends StatefulWidget {
  const Firstpage({Key key}) : super(key: key);
  @override
  _FirstpageState createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
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
                            "Modified Requirement",
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
                                Row(
                                   children: <Widget>[
                                     Padding(padding: EdgeInsets.only(top: 25)),
                                     SizedBox(
                                       height: 220.0,
                                       width: 390.0,
                                       child: Carousel(
                                         images: [
                                           Image(image: AssetImage("assets/w1.jpg")),
                                           Image(image: AssetImage("assets/w2.jpg")),
                                           Image(image: AssetImage("assets/w3.jpg")),
                                           Image(image: AssetImage("assets/car9.jpg")),
                                           Image(image: AssetImage("assets/w5.jpg")),
                                           Image(image: AssetImage("assets/w6.jpg")),
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
                                   ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 15),
                                      child: Text("Nexon EV - India's Own Electric SUV",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 8),
                                      child: Container(
                                        height: 320,
                                        width: 380,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 7,left: 340),
                                              child:Text("Ad",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.only(top: 10)),
                                            ClipOval(
                                              child: Container(
                                                width: 300.0,
                                                height: 150.0,
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
                                            Padding(padding: EdgeInsets.only(top: 10),
                                              child: Text("Built on India's first 5th rated platform - Nexon",
                                                style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.only(top: 6),
                                              child: Text("Starting at Rs 13,99,000 Lakh",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.only(top: 10),
                                              child: MaterialButton(
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(milliseconds: 200),
                                                        child: Nexonev(),
                                                      ));
                                                },
                                                color: Colors.blueAccent,
                                                hoverColor: Colors.black,
                                                minWidth: 250.0,
                                                padding: EdgeInsets.symmetric(vertical: 12.0),
                                                child: Text(
                                                  "EXPLORE MORE",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                      Padding(padding: EdgeInsets.only(top: 20,left: 05),
                                          child: Text("Search By :-",
                                             style: TextStyle(
                                                color: Colors.white,
                                               fontSize: 20,
                                               fontWeight: FontWeight.bold,
                                             ),
                                          ),
                                      ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 06),
                                      child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            ClipOval(
                                              child: Container(
                                                width: 80.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/a11.png'),
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
                                                          child: Brands(),
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
                                              "Brands",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Schyler',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 06,left: 10),
                                      child: Container(
                                        height: 130,
                                        width: 130,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          children: <Widget>[
                                            ClipOval(
                                              child: Container(
                                                width: 130.0,
                                                height: 100.0,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage('assets/a8.png'),
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
                                                          child: Bodytype(),
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
                                              "Bodytype",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Schyler',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 20),
                                  child:MaterialButton(
                                    onPressed: (){
                                      Navigator.push(context,
                                        PageTransition(
                                          type: PageTransitionType.fade,
                                          child: Testdrive(),
                                        ),
                                      );
                                    },
                                    color: Colors.blueAccent,
                                    hoverColor: Colors.black,
                                    minWidth: 250.0,
                                    padding: EdgeInsets.symmetric(vertical: 12.0),
                                    child: Text(
                                      "Book For Test Drive",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 10,left: 10),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Popular Cars :-",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 03),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          height: 200,
                                          width: 170,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              ClipOval(
                                                child: Container(
                                                  width: 170.0,
                                                  height: 150.0,
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
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                              new Text(
                                                "Price - 11.28L",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 10)),
                                        Container(
                                          height: 200,
                                          width: 170,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: <Widget>[
                                              ClipOval(
                                                child: Container(
                                                  width: 140.0,
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
                                                height: 02.0,
                                              ),
                                              new Text(
                                                "Hyundai Venue",
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                              new Text(
                                                "Price - 7.73L",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'Schyler',
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            ClipOval(
                                              child: Container(
                                                width: 170.0,
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
                                              height: 02.0,
                                            ),
                                            new Text(
                                              "Kia Seltos",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Schyler',
                                              ),
                                            ),
                                            new Text(
                                              "Price - 11.12L",
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontFamily: 'Schyler',
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 10)),
                                      Container(
                                        height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            ClipOval(
                                              child: Container(
                                                width: 170.0,
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
                                              height: 02.0,
                                            ),
                                            new Text(
                                              "Kia Sonet",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Schyler',
                                              ),
                                            ),
                                            new Text(
                                              "Price - 7.69L",
                                              style: TextStyle(
                                                fontSize: 18,
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
