// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Timer _timer;
  String _displayText = "Pay friends and merchants";
  bool _showFirstText = true;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        _displayText = _showFirstText
            ? "Pay by name or phone num..."
            : "Pay friends and merchants";
        _showFirstText = !_showFirstText;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: HexColor('f4f7fe'),
              width: size.width,
              height: 350,
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Material(
                        elevation: 9, // Add elevation for shadow
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                            height: 50,
                            width: 300,
                            decoration: BoxDecoration(
                              color: HexColor('f3f6fb'),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(Icons.search),
                                SizedBox(
                                  width: 15,
                                ),
                                Text(
                                  _displayText,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 18),
                                )
                              ],
                            )),
                      ),
                      SizedBox(width: 20),
                      Center(
                        child: CircleAvatar(
                            backgroundImage: AssetImage('images/g2.jpg')),
                      )
                    ],
                  ),
                  SizedBox(height: 79),
                  Image.asset("images/g1.jpg"),
                ],
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 50),
                Icon(
                  Icons.qr_code_scanner_outlined,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 60),
                Icon(
                  FontAwesomeIcons.contactBook,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 65),
                Icon(
                  FontAwesomeIcons.mobileScreenButton,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 70),
                Icon(
                  FontAwesomeIcons.bank,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 35),
                Text('Scan any\n QR code',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 35),
                Text('   Pay\ncontacts',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 30),
                Text('Pay phone\n   number',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 30),
                Text('Pay phone\n   number',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 50),
                Icon(
                  FontAwesomeIcons.at,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 60),
                Icon(
                  Icons.person_outlined,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 65),
                Icon(
                  FontAwesomeIcons.scroll,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
                SizedBox(width: 70),
                Icon(
                  Icons.mobile_friendly_outlined,
                  size: 25,
                  color: HexColor('2c63aa'),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 35),
                Text('Scan any\n QR code',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 35),
                Text('   Pay\ncontacts',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 30),
                Text('Pay phone\n   number',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                SizedBox(width: 30),
                Text('Pay phone\n   number',
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
              ],
            ),
            SizedBox(height: 35),
            Row(
              children: [
                SizedBox(width: 30),
                DottedBorder(
                  color: Colors.grey, // Border color
                  strokeWidth: 2, // Border width
                  dashPattern: [3, 3], // Length of dashes and gaps
                  borderType: BorderType
                      .RRect, // Border type: Rect, RRect, Circle, Oval
                  radius: Radius.circular(20),
                  child: Container(
                    height: 30,
                    width: 150,
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('    Activate UPI Lite   ',
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w900)),
                        SizedBox(
                            height: 5), // Add some space between text and icon
                        Icon(FontAwesomeIcons.plusCircle, color: Colors.grey),
                      ],
                    ), // Background color
                  ),
                ),
                SizedBox(width: 20),
                Container(
                    height: 35,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('f4f7fc'),
                    ),
                    child: Center(
                        child: Text('UPI ID: arjunfree256@ok...',
                            style: TextStyle(fontSize: 12)))),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 30),
                Text('People', style: TextStyle(fontSize: 28))
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                    backgroundColor: HexColor('465a65'),
                    radius: 30,
                    child: Text(
                      'G',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                SizedBox(width: 40),
                CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 30,
                    child: Text(
                      'D',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                SizedBox(width: 40),
                CircleAvatar(
                    backgroundColor: HexColor('798f9c'),
                    radius: 30,
                    child: Text(
                      'M',
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    )),
                SizedBox(width: 40),
                CircleAvatar(radius: 30, child: Image.asset('images/g3.jpg')),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 35),
                Text('Ganesh'),
                SizedBox(width: 58),
                Text('Damu'),
                SizedBox(width: 38),
                Text('Mourougane'),
                SizedBox(width: 18),
                Text('Sharnmugam'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  backgroundColor: Colors.orange,
                  radius: 30,
                  child: Icon(
                    Icons.person_2,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 40),
                CircleAvatar(radius: 30, child: Image.asset('images/g4.jpg')),
                SizedBox(width: 40),
                CircleAvatar(radius: 30, child: Image.asset('images/g5.jpg')),
                SizedBox(width: 45),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: HexColor('2056a5'),
                      size: 30,
                    ))
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 45),
                Text('1202'),
                SizedBox(width: 56),
                Text('Sarathy'),
                SizedBox(width: 44),
                Text('Athyaman'),
                SizedBox(width: 50),
                Text('More'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 20),
                Text('Businesses', style: TextStyle(fontSize: 28)),
                SizedBox(width: 110),
                Container(
                    height: 35,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: HexColor('c3e7fd'),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(Icons.shopping_bag_outlined),
                        Text('Explore',
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400))
                      ],
                    ))
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 40),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Icon(
                      FontAwesomeIcons.gift,
                      color: HexColor('2c63aa'),
                      size: 25,
                    )),
                SizedBox(width: 40),
                CircleAvatar(radius: 30, child: Image.asset('images/g7.jpg')),
                SizedBox(width: 40),
                CircleAvatar(radius: 30, child: Image.asset('images/g8.jpg')),
                SizedBox(width: 40),
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: HexColor('2056a5'),
                      size: 30,
                    ))
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 35),
                Text('Gift Cards'),
                SizedBox(width: 22),
                Text('Jio Prepaid'),
                SizedBox(width: 30),
                Text('Vi Prepaid'),
                SizedBox(width: 47),
                Text('More'),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 30),
                Text('Bills & recharges', style: TextStyle(fontSize: 28))
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                  radius: 20,
                  child: Image.asset('images/g8.jpg'),
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Raethika',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Validity expired',
                        style: TextStyle(fontSize: 15, color: Colors.red)),
                  ],
                ),
                SizedBox(width: 125),
                Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey, width: 1.0),
                    ),
                    child: Center(
                        child: Text(
                      'Pay',
                      style: TextStyle(
                          color: HexColor('2056a5'),
                          fontWeight: FontWeight.w500),
                    )))
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                Text(
                  'Try adding these',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Icon(Icons.mobile_friendly_outlined)),
                SizedBox(width: 40),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Icon(Icons.tv)),
                SizedBox(width: 40),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Icon(Icons.lightbulb_outline)),
                SizedBox(width: 40),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Icon(Icons.car_crash_outlined)),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 35),
                Text(' Mobile \nrecharge'),
                SizedBox(width: 22),
                Text('DTH / Cable\n         TV'),
                SizedBox(width: 30),
                Text('  Electricity'),
                SizedBox(width: 40),
                Text(' FASTag\nrecharge'),
              ],
            ),
            SizedBox(height: 20),
            Container(
                height: 40,
                width: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 1.0),
                ),
                child: Center(
                    child: Text(
                  'View all',
                  style: TextStyle(
                      color: HexColor('2056a5'), fontWeight: FontWeight.w500),
                ))),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                Text('Offers & rewards', style: TextStyle(fontSize: 28))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 30),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Image.asset('images/g9.jpg')),
                SizedBox(width: 40),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Image.asset('images/g10.jpg')),
                SizedBox(width: 40),
                CircleAvatar(
                    radius: 30,
                    backgroundColor: HexColor('c2e6fe'),
                    child: Image.asset('images/g11.jpg')),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: [
                SizedBox(width: 35),
                Text('Rewards'),
                SizedBox(width: 50),
                Text('Offers'),
                SizedBox(width: 50),
                Text('Referrals'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 30),
                Text('Manage your money', style: TextStyle(fontSize: 28))
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 25),
                Icon(
                  Icons.speed_outlined,
                  color: HexColor('2056a5'),
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Check your CIBIL score for',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                    Text('free',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(width: 70),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 25),
                Icon(
                  Icons.history,
                  color: HexColor('2056a5'),
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('See transcation history',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(width: 99),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 28),
                Icon(
                  FontAwesomeIcons.bank,
                  color: HexColor('2056a5'),
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('See transcation history',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                ),
                SizedBox(width: 99),
                Icon(Icons.keyboard_arrow_right_rounded)
              ],
            ),
            SizedBox(height: 90),
            Image.asset('images/g12.jpg'),
            SizedBox(height: 40),
            Text(
              'Showing businesses based on your location - Learn\n                                        more',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
