import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'About.dart';
import 'Modified.dart';


class Advice extends StatefulWidget {
  const Advice({Key key}) : super(key: key);

  @override
  _AdviceState createState() => _AdviceState();
}

class _AdviceState extends State<Advice> {

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
                          onTap: (){},
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
                         backgroundColor: Colors.white,
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
                                   Column(
                                      children: <Widget>[
                                        Padding(padding: EdgeInsets.only(top: 10,left: 5,right: 5)),
                                        Image(image: AssetImage("assets/a1.jpg"),
                                          height: 300,
                                          width: 390,
                                        ),
                                        Text("How to Take Delivery of your New Car?",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Driving home a new car is undeniably a thrilling experience. After all, you have been saving for that dream car while eagerly waiting in excitement to drive it around. But wait! You need to take some necessary precautions before you take the delivery of your new vehicle. Here are some important pointers that will help you with the pre-delivery inspection of your new vehicle.",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 10)),
                                        Text("New Car Pre-Registration / Delivery Checklist",
                                          style: TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 8,)),
                                        Text("Inspect before registration ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Do not wait till the time your vehicle has been registered in your name. As this would mean limited liability to the dealer and issues, if any, will be rectified only under the company warranty. Check the Vehicle Identification Number (VIN) to know the vehicle’s month and year of production. The Form-22 certificate from the dealer will reveal engine/chassis number, while the Road-Worthiness Certificate issued as part of Form 22 will have the month/year of manufacture. Also ensure that the odometer cable is not disconnected as there is a possibility that the vehicle might have been used as a demo car.",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 8,)),
                                        Text("Exterior inspection",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Dealer stockyards are not really a pleasant sight to look at. Regular movement of the inventory and weather changes are likely to cause issues like rusting and paint/body damage. Firstly, do a physical inspection of the vehicle carefully and enquire about any visible damage. If any, get a written confirmation from the dealer and ensure that it is fixed before the vehicle is delivered. Start the engine to check for unusual or rattling noises.   ",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 8,)),
                                        Text("Interior inspection  ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Check the interior of the vehicle for any damage to the upholstery. As mentioned earlier, stockyards are a messy place. Hence, you need to thoroughly inspect the quality of the dashboard, seats, door pads and the floor carpet. Look for any visible signs of damage due to water seepage. The electronics, seat belts and glove box need to function as expected. The air conditioner should function normally and it should not emit any unexpected odour.  ",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 8,)),
                                        Text("Documents",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Once you are convinced that the vehicle which is being sold to you is free of niggles, it is time for you to focus on the documentation process. Ensure that the VIN is the same as the one appearing on the bill of sale, registration certificate as well as on the finance or lease agreement. Check the insurance details and file receipts of all payments done towards registration and accessories. ",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("Ensure that the owner manual and the service booklet have been stamped by the dealer with correct details. It is important to note that high security number plates are to be mandatorily affixed before delivery of a new car in most cities. Hence, keep in mind that the colour of the vehicle is unlikely to be changed at a later date. At the time of delivery, the vehicle will be handed over to you with tax receipts, registration copy, and pollution certificate along with a copy of the vehicle insurance. The hard copy of vehicle registration certificate is sent directly to your registered address within two months.",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 10,)),
                                        Image(image: AssetImage("assets/a3.jpg"),
                                          height: 300,
                                          width: 390,
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 8,)),
                                        Text("Delivery ",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 5,left: 5,right: 5)),
                                        Text("At the time of delivery ensure that the vehicle is road legal and you have all the necessary documents with you before you drive out of the showroom. Accepting the vehicle in broad daylight is a good idea as you can thoroughly inspect the vehicle. Also ensure that all the mutually agreed work has been completed to your satisfaction. That said, before your leave the showroom, do thank everyone and acknowledge their effort in delivering the car that fulfils your expectation. Happy driving!",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                          textAlign: TextAlign.justify,
                                        ),
                                      ],
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
