import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class tatavenue extends StatelessWidget {
  tatavenue({Key key}) : super(key: key);
  List<Widget> containers =[
    Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 187,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child:Column(
                      children:<Widget> [
                        Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:  AssetImage("assets/compare/nexon.jpeg"),
                            ),
                          ),
                          // ignore: deprecated_member_use
                          child: FlatButton(
                              onPressed: (){},
                              child: null
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:30),
                          child:Text('Tata Nexon',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                    child:Container(
                      width: 187,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      child:Column(
                        children:<Widget> [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:  AssetImage("assets/compare/venue.jpg"),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                                onPressed: (){},
                                child: null
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top:30),
                            child:Text('Hyundai Venue',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),

                ],
              ),
            ),


            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: <Widget>[
                Container(
                  height: 1300,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 90, top: 17),
                        child: Text("Engine & Transmission",
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: 1200,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right:310, top: 20),
                                child: Text("Engine",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 90,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('1199 cc,3 cylinders Inline,2 Valves/Cylinder,SOHC',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                    child: Container(
                                      height: 90,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('1197 cc,3 cylinders Inline,4 Valves/Cylinder,DOHC',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Engine Type",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('1.2L turbo',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('1.2 I Kappa',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Fuel Type",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('Petrol',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Petrol',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Max Power (bhprpm)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('118 bhp 5500 rpm',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('82 bhp 6000 rpm',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Max Torque (Nmrpm)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('170 Nm 1750rpm',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('114Nm 4000 rpm',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Mileage (ARAI) (kmpl)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('17.4',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('17.52',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Driving Range (Km)",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('765.6',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('788',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Drivetrain",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('FWD',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('FWD',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Transmission",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('Manual - 6 Gears sport',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Manual - 5 Gears',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),

                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Emission Standard",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('BS 6',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('BS 6',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Turbocharger/Supercharger",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('YES',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 770,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 90, top: 17),
                          child: Text("Dimensions & Weight",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 670,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:310, top: 20),
                                  child: Text('Length',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('3993',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('3995',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Width(mm)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('1811',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('1770',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Height(mm)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('1606',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('1590',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Wheelbase(mm)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('2698',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('2500',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Ground Clearance",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('209',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('195',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Kerb Weight(kg)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('-',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('1112',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 670,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 250, top: 17),
                          child: Text("Capacity",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 570,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:310, top: 20),
                                  child: Text('Doors',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('4',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('4',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Seating Capacity (Person)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('5',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('5',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("No od Seating Rows(Rows)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('2',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('2',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Bootspace(Litres)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('480',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('460',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Fuel Tank Capacity",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('44',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('45',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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



    Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 187,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child:Column(
                      children:<Widget> [
                        Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:  AssetImage("assets/compare/nexon.jpeg"),
                            ),
                          ),
                          child: FlatButton(
                              onPressed: (){},
                              child: null
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:30),
                          child:Text('Tata Nexon',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                    child:Container(
                      width: 187,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      child:Column(
                        children:<Widget> [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:  AssetImage("assets/compare/venue.jpg"),
                              ),
                            ),
                            // ignore: deprecated_member_use
                            child: FlatButton(
                                onPressed: (){},
                                child: null
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top:30),
                            child:Text('Hyundai Venue ',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),

                        ],
                      ),


                    ),
                  ),

                ],
              ),
            ),


            Padding(padding: EdgeInsets.only(top: 10)),
            Row(
              children: <Widget>[
                Container(
                  height: 470,
                  width: 390,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(right: 290, top: 17),
                        child: Text("Safety",
                          style: TextStyle(
                            fontSize: 27,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 20),
                        child: Container(
                          height: 370,
                          width: 390,
                          decoration: BoxDecoration(
                            color: Colors.black,
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(padding: EdgeInsets.only(right:310, top: 20),
                                child: Text("Airbags",
                                  style: TextStyle(
                                    fontSize: 22,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(padding: EdgeInsets.only(top: 10),
                                    child: Container(
                                      height: 70,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('2 Airbags (Driver,Passenger)',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                    child: Container(
                                      height: 70,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('2 Airbags (Driver,Passenger)',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Child Seat Anchor Points",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('YES',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                child: Row(
                                  children: <Widget>[
                                    Text("Seat Belt Warning ",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(top: 12,),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      width: 190,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child:  Column(
                                        children: <Widget>[
                                          Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                            child: Text('YES',
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 670,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 140, top: 17),
                          child: Text("Braking & Traction",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 570,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:270, top: 20),
                                  child: Text('ABS Brake',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Electronic Brake-force Distribution",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Brake Assist",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Electronic Stability Program(ESP)",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('NO',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Hill Hold Control",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('NO',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 570,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 150, top: 17),
                          child: Text("Locks & Security",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 470,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:190, top: 20),
                                  child: Text('Engine Immobilizer',
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Central Locking",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 70,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('With Key',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text('Speed Sensing Door Lock',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('NO',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Child Safety Lock",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 1250,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 90, top: 17),
                          child: Text("Comfort & Convenience",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 1150,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:230, top: 20),
                                  child: Text("Air Conditioner",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 70,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 20,left: 5),
                                              child: Text('Yes(Manual)',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 70,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Yes(Automatic Climate Control)',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Front Ac",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 90,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Single Zone, Common Fan Speed Control',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 90,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('Single Zone,Common Fan Speed Control',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Rear AC",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Vents Behind Front Armrest',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 70,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('Blower,Vents Behind Front Armrest',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Heater",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Vanity Mirriors On Sun Visors",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('CO-Driver Only',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('NO',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Anti-Glare Mirrors",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Manual-Internal Only',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 70,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('Manual-Internal Only',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Parking Sensors",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Rear',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('Rear',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Headlight & Ignition On Reminder",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Steering Adjustment",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Tilt',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('Tilt & Telescopic',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("12V Power Outlets",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('1',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('2',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 440,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 290, top: 17),
                          child: Text("Storage",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 340,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.black,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:250, top: 20),
                                  child: Text("Cup Holders",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Front & Rear',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                      child: Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('Front & Rear',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Driver Armrest Storage",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('YES',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Cooled Glove Box",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 50,
                                        width: 190,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('YES',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 50,
                                          width: 190,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('NO',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
    Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top:20),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width:187,
                    height: 240,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),

                    ),
                    child:Column(
                      children:<Widget> [
                        Container(
                          width: 200,
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:  AssetImage("assets/compare/nexon.jpeg"),
                            ),
                          ),
                          child: FlatButton(
                              onPressed: (){},
                              child: null
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top:30),
                          child:Text('Tata Nexon',
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                    child:Container(
                      width: 187,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),

                      ),
                      child:Column(
                        children:<Widget> [
                          Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:  AssetImage("assets/compare/venue.jpg"),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: (){},
                                child: null
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top:30),
                            child:Text('Hyundai Venue ',
                              style: TextStyle(
                                fontSize: 22,
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top:10),
              child:Row(
                children: <Widget>[
                  Container(
                    height: 570,
                    width: 390,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(right: 290, top: 17),
                          child: Text("Colour",
                            style: TextStyle(
                              fontSize: 27,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20),
                          child: Container(
                            height: 470,
                            width: 390,
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Column(
                              children: <Widget>[
                                Padding(padding: EdgeInsets.only(right:310, top: 20),
                                  child: Text("Color",
                                    style: TextStyle(
                                      fontSize: 22,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(padding: EdgeInsets.only(top: 10),
                                      child: Container(
                                        height: 70,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 2),
                                              child: Text(' ',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.only(top: 10,left: 7),
                                      child: Container(
                                        height: 70,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text(' ',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.blueGrey,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("",
                                        style: TextStyle(
                                          color: Colors.green,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 7),
                                              child: Text('',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white70,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 70,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.black45,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 15, left: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Text("Seat Belt Warning ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.only(top: 12,left: 2),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Container(
                                        height: 70,
                                        width: 150,
                                        decoration: BoxDecoration(
                                          color: Colors.brown,
                                        ),
                                        child:  Column(
                                          children: <Widget>[
                                            Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                              child: Text('',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(padding: EdgeInsets.only(left: 5),
                                        child: Container(
                                          height: 70,
                                          width: 150,
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                          ),
                                          child:  Column(
                                            children: <Widget>[
                                              Padding(padding: EdgeInsets.only(top: 10,left: 5),
                                                child: Text('',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
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
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[

              Tab(
                  text: 'SPECIFICATION'
              ),
              Tab(
                text: 'FEATURES',
              ),
              Tab(
                text: 'COLOURS',
              ),
            ],

          ),
          backgroundColor: Colors.black,
          elevation: 20,
          automaticallyImplyLeading: true,
          leading: IconButton(icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () => Navigator.pop(context,false),
          ),
        ),
        backgroundColor: Colors.black,
        body: TabBarView(children: containers),
      ),
    );
  }
}


