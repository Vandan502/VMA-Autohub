import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:page_transition/page_transition.dart';
import 'Advice.dart';
import 'Modified.dart';

class About extends StatefulWidget {
  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {

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
                              SizedBox(height: 25.0),
                              Padding(padding: EdgeInsets.only(top: 10,left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/Mahindra_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(seconds: 1),
                                                        child: mahindra_history(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/Hyundai_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(seconds: 1),
                                                        child: hyundai_history(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10,left: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/ford_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(seconds: 1),
                                                        child: ford_history(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/MG_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(seconds: 1),
                                                        child: Mg_history(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10,left: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/Tata_motors.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){
                                                  Navigator.push(context,
                                                      PageTransition(
                                                        type: PageTransitionType.scale,
                                                        duration: Duration(seconds: 1),
                                                        child: tata_history(),
                                                      ));
                                                },
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/Kia_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){},
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 10,left: 10.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/H_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){},
                                                child: null,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 10)),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.rectangle,
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      child: Column(
                                        children: <Widget>[
                                          ClipOval(
                                            child: Container(
                                              width: 140.0,
                                              height: 130.0,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: AssetImage('assets/Vg_cars.png'),
                                                ),
                                              ),
                                              // ignore: deprecated_member_use
                                              child: FlatButton(
                                                padding: EdgeInsets.all(0),
                                                onPressed: (){},
                                                child: null,
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

class mahindra_history extends StatefulWidget {
  @override
  _mahindra_historyState createState() => _mahindra_historyState();
}

class _mahindra_historyState extends State<mahindra_history> {

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
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.black,
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
                              Padding(padding: const EdgeInsets.only(left: 80, top: 10),
                                child: Text(
                                  "History Of Mahindra Automobiles",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Mahindra began assembling the Jeep CJ3 in 1954, and light commercial vehicles in 1965. In 1979 the licensed assembly of Peugeot diesel four-cylinder engines and transmissions began and in 1982 a tie-up with Kia Motors to build their four-speed KMT90 transmission and transfer case was announced. Mahindra's MM range was a mainstay of the lineup and was eventually also offered with a 1.8-liter Isuzu petrol engine in addition to International and Peugeot diesels. Mahindra started making passenger vehicles firstly with the Logan in April 2007 under the Mahindra Renault joint venture. M&M made its maiden entry into the heavy trucks segment with the Mahindra Truck and Bus Division the joint venture with International Truck USA. ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  Image(image: AssetImage("assets/cj3.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Mahindra produces a wide range of vehicles, including MUVs LCVs and three-wheelers. It manufactures over 20 models of cars including larger multi-utility vehicles like the Scorpio and the Bolero. It formerly had a joint venture with Ford called Ford India Private Limited to build passenger cars. At the 2008 Delhi Auto Show Mahindra executives said the company was pursuing an aggressive product expansion program that would see the launch of several new platforms and vehicles over the next three years including an entry-level SUV designed to seat five passengers and powered by a small turbocharged Diesel engine. True to their word. Mahindra & Mahindra launched the Mahindra Xylo in January 2009 selling over 15000 units in its first six months. Also in early 2008 Mahindra commenced its first overseas CKD operations with the launch of the Mahindra Scorpio in Egypt in partnership with the Bavarian Auto Group. This was soon followed by assembly facilities in Brazil. Mahindra & Mahindra has a controlling stake in Mahindra REVA Electric Vehicles. In 2011 it also gained a controlling stake in South Korea's SsangYong Motor Company. Mahindra launched its relatively heavily publicised SUV and XUV500  code-named as W201 in September 2011. The new SUV by Mahindra was designed in-house and it was developed on the first global SUV platform that could be used for developing more SUVs. In India, the new Mahindra XUV 500 came in a price range between ₹1140000–1500000. The company was expected to launch three products in 2015 (two SUVs and pme CV) and an XUV 500 hybrid. Mahindra's two-wheeler segment launched a new scooter in the first quarter of 2015. Besides India. the company also targeted Europe and Africa, Australia and Latin America for this model. Mahindra President Mr. Pawan Goenka stated that the company planned to launch six new models in the year. The company launched the CNG version of its mini truck Maxximo on 29 June 2012. A new version of the Verito in Diesel and petrol options was launched by the company on 26 July 2012 to compete with Maruti's Dzire and Toyota Kirloskar Motor's Etios. On 30 July 2015  Mahindra released sketches of a new compact SUV called the TUV300 slated to be launched on 10 September 2015. The TUV300 design took cues from a battle tank and used a downsized version of the mHawk engine found on the XUV500 and Scorpio and some models of the Xylo. This new engine was dubbed the mHawk80. In 2015 Mahindra introduced an app based intra-city cargo platform known as SMARTSHIFT. a load exchange platform for small commercial vehicles. In 2018 Mahindra announced merger the of SMARTSHIFT with Mumbai-based logistics solutions provider Porter. On 3 September 2018 Mahindra Marazzo the shark inspired vehicle was launched in collaboration with Mahindra Research Valley (MRV) and MANA and Pininfarina in four variants. In August 2020 M&M and Israel-based REE Automotive signed a memorandum of understanding (MOU) to explore development and manufacturing of electric commercial vehicles for global markets. In October 2020 Mahindra launched the second-generation Thar 2020 – the All-New Thar.  ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
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

class hyundai_history extends StatefulWidget {
  @override
  _hyundai_historyState createState() => _hyundai_historyState();
}

class _hyundai_historyState extends State<hyundai_history> {

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
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.black,
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
                              Padding(padding: const EdgeInsets.only(left: 80, top: 10),
                                child: Text(
                                  "History Of Hyundai Automobiles",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Chung Ju-Yung founded the Hyundai Engineering and Construction Company in 1947. Hyundai Motor Company was later established in 1967, and the company's first model, the Cortina, was released in cooperation with Ford Motor Company in 1968. When Hyundai wanted to develop their own car, they hired George Turnbull in February 1974, the former Managing Director of Austin Morris at British Leyland. He in turn hired five other top British car engineers. They were Kenneth Barnett body design, engineers John Simpson and Edward Chapman, John Crosthwaite ex-BRM as chassis engineer and Peter Slater as chief development engineer. In 1975, the Pony, the first South Korean car, was released, with styling by Giorgio Giugiaro of ItalDesign and powertrain technology provided by Japan's Mitsubishi Motors. Exports began in the following year to Ecuador and soon thereafter to the Benelux countries. Hyundai entered the British market in 1982, selling 2993 cars in their first year there. ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  Image(image: AssetImage("assets/pony.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("In 1984, Hyundai began exporting the Pony to Canada, but not to the United States, as the Pony would not pass emissions standards there. Canadian sales greatly exceeded expectations, and it was at one point the top-selling car on the Canadian market. In 1985, the one millionth Hyundai car was built. In 1986, Hyundai began to sell cars in the United States, and the Excel was nominated as Best Product #10 by Fortune magazine, largely because of its affordability. The company began to produce models with its own technology in 1988, beginning with the midsize Sonata. In the spring of 1990, aggregate production of Hyundai automobiles reached the four million mark. In 1991, the company succeeded in developing its first proprietary gasoline engine, the four-cylinder Alpha, and also its own transmission, thus paving the way for technological independence. In 1996, Hyundai Motor India Limited was established with a production plant in Irungattukottai near Chennai, India. In 1998, Hyundai began to overhaul its image in an attempt to establish itself as a world-class brand. Chung Ju Yung transferred leadership of Hyundai Motor to his son, Chung Mong Koo, in 1999. Hyundai's parent company, Hyundai Motor Group, invested heavily in the quality, design, manufacturing, and long-term research of its vehicles. It added a 10-year or 100,000-mile (160,000 km) warranty to cars sold in the United States and launched an aggressive marketing campaign. In 2004, Hyundai was ranked second in initial quality in a survey/study by J.D. Power and Associates in North America. Hyundai is now one of the top 100 most valuable brands worldwide. Since 2002, Hyundai has also been one of the worldwide official sponsors of the FIFA World Cup. In 2006, the South Korean government initiated an investigation of Chung Mong Koo's practices as head of Hyundai, suspecting him of corruption. On 28 April 2006, Chung was arrested, and charged for embezzlement of 100 billion South Korean won (US 106 million). As a result, Hyundai vice chairman and CEO, Kim Dong-jin, replaced him as head of the company. On 30 September 2011, Yang Seung Suk announced his retirement as CEO of Hyundai Motor Co. In the interim replacement period, Chung Mong-koo and Kim Eok-jo will divide the duties of the CEO position. In 2014, Hyundai started an initiative to focus on improving vehicle dynamics in its vehicles and hired Albert Biermann, former Vice President of Engineering at BMW M to direct chassis development for Hyundai vehicles; stating The company intends to become a technical leader in ride and handling, producing vehicles that lead their respective segments for driver engagement. On 14 October 2020, Euisun Chung was inaugurated as the new chairman of the Hyundai Motor Group. His father, Chung Mong-Koo, has been made Honourary Chairman.   ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
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

class ford_history extends StatefulWidget {



  @override
  _ford_historyState createState() => _ford_historyState();
}
class _ford_historyState extends State<ford_history> {

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
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.black,
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
                              Padding(padding: const EdgeInsets.only(left: 120, top: 10),
                                child: Text(
                                  "History Of Ford Cars",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("The Ford Motor Company, commonly known as Ford, is an American multinational automaker that has its main headquarters in Dearborn, Michigan, a suburb of Detroit. It was founded by Henry Ford and incorporated on June 16, 1903. The company sells automobiles and commercial vehicles under the Ford brand, and most luxury cars under the Lincoln brand. Ford also owns Brazilian SUV manufacturer Troller, an 8% stake in Aston Martin of the United Kingdom and a 32% stake in Jiangling Motors. It also has joint-ventures in China (Changan Ford), Taiwan (Ford Lio Ho), Thailand (AutoAlliance Thailand), Turkey (Ford Otosan), and Russia (Ford Sollers). The company is listed on the New York Stock Exchange and is controlled by the Ford family; they have minority ownership but the majority of the voting power. Ford introduced methods for large-scale manufacturing of cars and large-scale management of an industrial workforce using elaborately engineered manufacturing sequences typified by moving assembly lines; by 1914, these methods were known around the world as Fordism. Ford's former UK subsidiaries Jaguar and Land Rover, acquired in 1989 and 2000 respectively, were sold to the Indian automaker Tata Motors in March 2008. Ford owned the Swedish automaker Volvo from 1999 to 2010. In 2011, Ford discontinued the Mercury brand, under which it had marketed entry-level luxury cars in the United States, Canada, Mexico, and the Middle East since 1938.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  Image(image: AssetImage("assets/ford2.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Ford is the second-largest U.S.-based automaker (behind General Motors) and the fifth-largest in the world (behind Toyota, Volkswagen, Hyundai-Kia and General Motors) based on 2015 vehicle production. At the end of 2010, Ford was the fifth largest automaker in Europe. The company went public in 1956 but the Ford family, through special Class B shares, still retain 40 percent voting rights. During the financial crisis at the beginning of the 21st century, it struggled financially to the point of collapse which was in large part prevented by President George W. Bush announcing his emergency financial rescue plan to help Ford Motors as well as Chrysler LLC and General Motors, making immediately available dollar 13.4 billion to the automaker. Ford Motors has since returned to profitability. Ford was the eleventh-ranked overall American-based company in the 2018 Fortune 500 list, based on global revenues in 2017 of 156.7 billion. In 2008, Ford produced 5.532 million automobiles and employed about 213,000 employees at around 90 plants and facilities worldwide. By 2005, both Ford and GM's corporate bonds had been downgraded to junk status as a result of high U.S. health care costs for an aging workforce, soaring gasoline prices, eroding market share, and an overdependence on declining SUV sales. Profit margins decreased on large vehicles due to increased incentives (in the form of rebates or low-interest financing) to offset declining demand. In the latter half of 2005, Chairman Bill Ford asked newly appointed Ford Americas Division President Mark Fields to develop a plan to return the company to profitability. Fields previewed the Plan, named The Way Forward, at the December 7, 2005, board meeting of the company and it was unveiled to the public on January 23, 2006. The Way Forward included resizing the company to match market realities, dropping some unprofitable and inefficient models, consolidating production lines, closing 14 factories and cutting 30,000 jobs. Ford moved to introduce a range of new vehicles, including Crossover SUVs built on unibody car platforms, rather than more body-on-frame chassis. In developing the hybrid electric powertrain technologies for the Ford Escape Hybrid SUV, Ford licensed similar Toyota hybrid technologies to avoid patent infringements. Ford announced that it will team up with electricity supply company Southern California Edison (SCE) to examine the future of plug-in hybrids in terms of how home and vehicle energy systems will work with the electrical grid. Under the multimillion-dollar, multi-year project, Ford will convert a demonstration fleet of Ford Escape Hybrids into plug-in hybrids, and SCE will evaluate how the vehicles might interact with the home and the utility's electrical grid. Some of the vehicles will be evaluated in typical customer settings, according to Ford. Ford moved to introduce a range of new vehicles, including Crossover SUVs built on unibody car platforms, rather than more body-on-frame chassis. In developing the hybrid electric powertrain technologies for the Ford Escape Hybrid SUV, Ford licensed similar Toyota hybrid technologies to avoid patent infringements. Ford announced that it will team up with electricity supply company Southern California Edison (SCE) to examine the future of plug-in hybrids in terms of how home and vehicle energy systems will work with the electrical grid. Under the multimillion-dollar, multi-year project, Ford will convert a demonstration fleet of Ford Escape Hybrids into plug-in hybrids, and SCE will evaluate how the vehicles might interact with the home and the utility's electrical grid. Some of the vehicles will be evaluated in typical customer settings, according to Ford. William Clay Ford Jr., great-grandson of Henry Ford (and better known by his nickname Bill), was appointed executive chairman in 1998, and also became chief executive officer of the company in 2001, with the departure of Jacques Nasser, becoming the first member of the Ford family to head the company since the retirement of his uncle, Henry Ford II, in 1982. Ford sold motorsport engineering company Cosworth to Gerald Forsythe and Kevin Kalkhoven in 2004, the start of a decrease in Ford's motorsport involvement. Upon the retirement of president and chief operations officer Jim Padilla in April 2006, Bill Ford assumed his roles as well. Five months later, in September, Ford named Alan Mulally as president and CEO, with Ford continuing as executive chairman. In December 2006, the company raised its borrowing capacity to about 25 billion, placing substantially all corporate assets as collateral. Chairman Bill Ford has stated that bankruptcy is not an option. Ford and the United Auto Workers, representing approximately 46,000 hourly workers in North America, agreed to a historic contract settlement in November 2007 giving the company a substantial break in terms of its ongoing retiree health care costs and other economic issues. The agreement included the establishment of a company-funded, independently run Voluntary Employee Beneficiary Association (VEBA) trust to shift the burden of retiree health care from the company's books, thereby improving its balance sheet. This arrangement took effect on January 1, 2010. As a sign of its currently strong cash position, Ford contributed its entire current liability (estimated at approximately US 5.5 billion as of December 31, 2009) to the VEBA in cash, and also pre-paid US dollar 500 million of its future liabilities to the fund. The agreement also gives hourly workers the job security they were seeking by having the company commit to substantial investments in most of its factories. The automaker reported the largest annual loss in company history in 2006 of 12.7 billion, and estimated that it would not return to profitability until 2009. However, Ford surprised Wall Street in the second quarter of 2007 by posting a 750 million profit. Despite the gains, the company finished the year with a 2.7 billion loss, largely attributed to finance restructuring at Volvo.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
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

class Mg_history extends StatefulWidget {
  @override
  _Mg_historyState createState() => _Mg_historyState();
}

class _Mg_historyState extends State<Mg_history> {

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
                        body: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.black,
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
                              Padding(padding: const EdgeInsets.only(left: 10, top: 10),
                                child: Text(
                                  "History Of Mg Automobiles",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("MG is a British automotive marque founded by Cecil Kimber in the 1920s, and M.G. Car Company Limited was the British sports car manufacturer that made the marque famous. Best known for its open two-seater sports cars, MG also produced saloons and coupés, with engines up to three litres in size. The marque is now owned by state owned Chinese automotive SAIC Motor Corporation Limited. MG cars had their roots in a 1920s sales promotion sideline of Morris Garages, a retail sales and service centre in Oxford belonging to William Morris. The business's manager, Cecil Kimber, modified standard production Morris Oxfords and added MG Super Sports to the plate at the nose of the car. A separate M.G. Car Company Limited was incorporated in July 1930. It remained Morris's personal property until 1 July 1935, when he sold it to his holding company, Morris Motors Limited.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  Image(image: AssetImage("assets/mg2.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("MG underwent many changes in ownership over the years. Morris's Nuffield Organization merged with Austin to create the British Motor Corporation Limited (BMC) in 1952. Its activities were renamed MG Division of BMC in 1967, and so it was a component of the 1968 merger that created British Leyland Motor Corporation (BLMC). The MG marque continued to be used by the successors of BLMC: British Leyland, the Rover Group and, by the start of 2000, the MG Rover Group, which entered receivership in 2005. The MG marque along with other assets of MG Rover were purchased by Nanjing Automobile Group (which merged into SAIC in 2007). MG production restarted in 2007 in China. The first new MG model in the UK for 16 years, the MG 6, was launched on 26 June 2011. William Morris's Morris Garages in Longwall Street, Oxford, was the Oxford agent for his Morris cars. Cecil Kimber joined the dealership as its sales manager in 1921 and was promoted to general manager in 1922. Kimber began promoting sales by producing his own special versions of Morris cars. Debate remains as to when MG car production started, although the first cars, rebodied Morris models that used coachwork from Carbodies of Coventry and known as Kimber Specials, bore both Morris and MG badges. Reference to MG with the octagon badge appears in an Oxford newspaper from November 1923, and the MG Octagon was registered as a trademark by Morris Garages on 1 May 1924. Others dispute this and believe that MG only properly began trading in 1925. Morris Garages assembled their cars in premises in Alfred Lane, Oxford. Demand soon caused a move to larger premises in Bainton Road in September 1925, sharing space with the Morris radiator works. Continuing expansion meant another move in 1927 to a separate factory in Edmund Road, Cowley, Oxford, near the main Morris factory, and for the first time, it was possible to include a production line. In 1928, the company had become large enough to warrant an identity separate from the original Morris Garages, and The M.G. Car Company was used from March of that year. In October, for the first time, a stand was taken at the London Motor Show. Space soon ran out again, and a search for a permanent home led to the lease of part an old leather factory in Abingdon, Oxfordshire, in 1929. A limited liability company named M.G. Car Company was incorporated on 21 July 1930. Kimber stayed with the company until 1941, when he fell out with Morris over procuring wartime work. Kimber died in 1945 in a railway accident. The M.G. Car Company Limited was absorbed along with Morris into The British Motor Corporation Limited (BMC), created in 1952 as a merger of Morris Motors Limited and The Austin Motor Company Limited. Long-time service manager John Thornley took over as general manager, guiding the company through its best years until his retirement in 1969. Under BMC, several MG models were no more than badge-engineered versions of other marques, with the main exception being the small MG sports cars. BMC merged with Jaguar Cars in September 1966, and that December, the new company was named British Motor Holdings (BMH). BMH merged with the Leyland Motor Corporation in 1968 to form British Leyland Motor Corporation (BLMC).",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
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

class tata_history extends StatefulWidget {
  @override
  _tata_historyState createState() => _tata_historyState();
}

class _tata_historyState extends State<tata_history> {

  double value = 0;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
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
                        body: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(top: 30.0,left: 15.0),
                                child: Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.arrow_back_ios),
                                      color: Colors.black,
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
                              Padding(padding: const EdgeInsets.only(left: 120, top: 10),
                                child: Text(
                                  "History Of Tata Motors",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Tata Motors Cars is a division of the India-based automaker Tata Motors which produces passenger cars under the brand name Tata Motors . It is currently the 3rd largest car manufacturer in India in terms of sales after Maruti Suzuki and Hyundai Motors. Tata Motors offers most safest cars in India as crash tested by the Global NCAP. Some of them includes Tata Nexon (Compact SUV), Tata Altroz (Premium Hatchback), Tata Tigor (Sub-4 Metre Compact Sedan) and Tata Tiago (Hatchback). Tata Motors entered the passenger vehicle market in 1991 with the launch of the Tata Sierra, a multi utility vehicle. This was followed by the launch of the Tata Estate in 1992 (a stationwagon based on the existing TataMobile light commercial vehicle) and the Tata Sumo in 1994, India's first sports utility vehicle. ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                              ),
                              new Column(
                                children: <Widget>[
                                  Image(image: AssetImage("assets/Nano.jpg"),
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.all(15),
                                child: Text("Tata launched the Indica in 1998, the first fully indigenous Indian passenger car. Although initially criticised by auto-analysts, its excellent fuel economy, powerful engine and an aggressive marketing strategy made it one of the best selling cars in the history of the Indian automobile industry. A newer version of the car, named Indica V2, was a major improvement over the previous version and quickly became a mass favourite. Tata Motors also successfully exported large quantities of the car to South Africa. The success of Indica played a key role in the growth of Tata Motors. In January 2008, Tata Motors launched Tata Nano, the least expensive production car in the world at about rupees 120,000 (US 3,000 dollars). The city car was unveiled during the Auto Expo 2008 exhibition in Pragati Maidan, New Delhi. Tata has faced controversy over developing the Nano as some environmentalists like Anumita Roychoudhury, of the Centre for Science and Environment in Delhi, and Rajendra K. Pachauri,] chairperson of the Intergovernmental Panel on Climate Change (IPCC), are concerned that the launch of such a low-priced car could lead to mass motorization in India with adverse effects on pollution and global warming. Tata had set up a factory in Sanand, Gujarat and the first Nanos were rolled out in summer 2009. Tata Nano Europa had been developed for sale in developed economies and it hit markets in 2010 while the normal Nano had hit markets in South Africa, Kenya and countries in Asia and Africa by late 2009. Tata Motors Cars meanwhile has launched further expansion into Southeast Asia with plans to sell cars in Vietnam and the Philippines. At the 12th Auto Expo in February 2014, Tata Motors unveiled The Bolt, a hatchback and The Zest, a compact sedan. They are slated to launch in August 2014. In 2020, there were plans for Chinese auto maker Chery to buy a percentage of Tata Motors in order for Chery (who already make Jaguar Land Rover cars in a joint venture in China) to gain entry into the Indian market and in order for Tata Motors to get technology for cars such as the proposed Tata Blackbird. However, due to Covid-19 and the continuing political tensions over the Chinese/Indian border it is likely that these plans will not go ahead anytime soon.",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                  textAlign: TextAlign.justify,
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
