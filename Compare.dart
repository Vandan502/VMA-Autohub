import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'crosscreta.dart';
import 'xuv300brezza.dart';
import 'cityverna.dart';
import 'tatavenue.dart';
import 'altrozbaleno.dart';
import 'jazzbaleno.dart';





class First extends StatefulWidget {
  const First({Key key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding:EdgeInsets.only(top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/crosscreta.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: crosscreta(),
                              ),
                            );
                          },
                          child: null
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding:EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/cityverna.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: cityverna(),
                              ),
                            );
                          },
                          child: null
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding:EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/nexonvenue.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: tatavenue(),
                              ),
                            );
                          },
                          child: null
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding:EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/altrizbaleno.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: altrozbaleno(),
                              ),
                            );
                          },
                          child: null
                      ),
                    ),
                  ),
                ],
              ),
            ),



            Padding(padding:EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/xuv300brezza.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: xuv300brezza(),
                              ),
                            );
                          },
                          child: null
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(padding:EdgeInsets.only(top: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:<Widget> [
                  Container(
                    width: 390,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Container(
                      width: 120,
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image:  AssetImage("assets/compare/jazzbaleno.png"),
                        ),
                      ),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                          onPressed: (){
                            Navigator.push(context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: jazzbaleno(),
                              ),
                            );
                          },
                          child: null
                      ),
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