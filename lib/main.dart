// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api


import 'package:flutter/material.dart';
import 'package:mowit_app/login.dart';
import 'package:mowit_app/profile_edit.dart';
import 'package:mowit_app/profile_view.dart';
import 'package:mowit_app/homepage.dart';
import 'package:mowit_app/settings.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



void main() {
  runApp(const MyApp());
}

String firstName = "Andrew";
String lastName = "Winland";

String getFirstName() {
  return firstName;
}

String getLastName() {
  return lastName;
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        splashColor: Colors.amber,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text(
          "MowIt",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w200,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const HomePage();
                  },
                ),
              );
            },
            icon: const Icon(Icons.home_outlined),
            color: Colors.white,
            iconSize: 35,
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ProfileView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.person_outlined),
            color: Colors.white,
            iconSize: 35,
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const Settings();
                  },
                ),
              );
            },
            icon: const Icon(Icons.settings),
            color: Colors.white,
            iconSize: 35,
          )
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Row(
  children: [
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome,",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          "$firstName $lastName",
          style: TextStyle(
            fontFamily: 'Berkshire Swash',
            color: Colors.red,
            fontSize: 50,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
    SizedBox(width: 10),
    CircleAvatar(
      radius: 50,
      backgroundImage: AssetImage('images/profile picture.jpg'),
    ),
  ],
),
            Container(
              padding: const EdgeInsets.only(top: 20),
            ),
            Align(
              alignment: Alignment(-1,0),
              child: Text(
                "Recommended based on Zip Code:",
                style: TextStyle(
                  fontFamily: 'Berkshire Swash',
                  fontSize: 40,
                ),
              ),
            ),
            
            Row(
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Mike's Lawn Care",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Kennesaw, Georgia - Around 2.5 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Lawn Cutting \$100, Tree Removal \$100",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Serives Offered: Weed Removal \$100, Pest Control \$150",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Mike's Lawn Care",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4701234567',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '470-123-4567',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Lawn Cutting \$100, Tree Removal \$100",
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  "Weed Removal \$100, Pest Control \$150",
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                
                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
                Text(
                  'Reviews:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                  'NONE',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    ),
                  ),
                  ),
                         
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 47, 255),
    ),
    child: Text('INFO'),
  ),
),
// END OF NEW BUTTON
SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                // Start Book Button 
  SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Book Now!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4701234567',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '470-123-4567',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  "You have now booked with Mike's Lawn Care!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please call the number to futher book the appointment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),              
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 73, 73),
    ),
    child: Text('BOOK'),
  ),
),
                //End of Compant Widgets
             
                //End of Company Widgets
        
              ],
            ),
            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(
  
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "John's Mowing and Company",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Kennesaw, Georgia - Around 5 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Lawn Cutting \$100 minimum",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Size of lawn is factored",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "John's Mowing and Company",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4042456363',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '404-245-6363',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  "Lawn Cutting \$100 minimum (Size of lawn is facotred)",
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                
                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
                Text(
                  'Reviews:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                  'NONE',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    ),
                  ),
                  ),
                         
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 47, 255),
    ),
    child: Text('INFO'),
  ),
),
// END OF NEW BUTTON
SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                // Start Book Button 
  SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Book Now!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4042456363',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '404-245-6363',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  "You have now booked with John's Mowing and Company!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please call the number to futher book the appointment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),              
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 73, 73),
    ),
    child: Text('BOOK'),
  ),
),
                //End of Company Widgets
        
              ],
            ),


  
            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(
  
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "BIG RYAN'S TREES",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Maietta, Georgia - Around 8 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Tree Removal \$300 minimum",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "BIG RYAN'S TREES",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+7702563258',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '770-256-3258',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Tree Removal \$300 minimum',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                
                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
                Text(
                  'Reviews:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Jackson H:',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    ),
                  ),
                  ),
                Text(
                  'They performed exactly as they said they would. JB was perfectly reasonable and forth coming when planning the work so they would not break my budget.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),         
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 47, 255),
    ),
    child: Text('INFO'),
  ),
),
// END OF NEW BUTTON
SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                // Start Book Button 
  SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Book Now!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+7702563258',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '770-256-3258',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  "You have now booked with BIG RYAN'S TREES!",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please call the number to futher book the appointment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),              
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 73, 73),
    ),
    child: Text('BOOK'),
  ),
),
                //End of Company Widgets
        
              ],
            ), 


            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
//Next Company
Row(
  
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Charlie Deets",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Maietta, Georgia - Around 15 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Lawn Care, Complete Serives \$250",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),

                //NEW BUTTON 
                SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Charlie Deets',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+17705899845',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '770-589-9845',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Lawn Care, Complete Services \$250',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                Text(
                  'Lawn Pest Control \$150',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
                Text(
                  'Reviews:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Stacy A:',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    ),
                  ),
                  ),
                Text(
                  'Put in two catchment drains and drain pipe to get rain water away from my home’s foundation. Work was completed quickly and to my full satisfaction. Would definitely use this group again for a landscaping issue.',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),         
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 47, 255),
    ),
    child: Text('INFO'),
  ),
),
// END OF NEW BUTTON
SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                // Start Book Button 
  SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Book Now!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+17705899845',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '770-589-9845',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'You have now booked with Charlie Deets!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please call the number to futher book the appointment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),              
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 73, 73),
    ),
    child: Text('BOOK'),
  ),
)

                //End of Compant Widgets
                
                //End of Company Widgets
        
              ],
            ),  
SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
            Row(
  
              children: [
                //Start of Company Widgets
                Column(
                  children: const [
                    Text(
                      "Gwinnett Landscaping Co.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Tucker, Georgia - Around 23 miles Away",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    Text(
                      "Serives Offered: Total Lanscaping Package - \$300",
                      style: TextStyle(
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    )

                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 75),
                ),
                //NEW BUTTON 
                SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Gwinnett Landscaping Co.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4046589874',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '404-658-9874',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'Services:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Total Lanscaping Package - \$300',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),
                
                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),
                Text(
                  'Reviews:',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                  'Kevin J:',
                    style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    ),
                  ),
                  ),
                Text(
                  'I could not be happier with the services Initially, I was considering other options because my lawn was not responding to your treatments fertilization, weed control, pest control, etc. (at least, that is what I thought at the time). There were brown patches, weeds, and lawn gnats everywhere. I was so frustrated! However, I decided to wait it out, and I am so thrilled that I did. Patience is KEY! My lawn looks great! It is so green and lush, and I can not find any weeds. One year later, and I am a VERY SATISFIED customer!!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),         
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 0, 47, 255),
    ),
    child: Text('INFO'),
  ),
),
// END OF NEW BUTTON
SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
                    ),
                // Start Book Button 
  SizedBox(
  width: 80.0,
  height: 50.0,
  child: ElevatedButton(
    onPressed: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Book Now!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
               mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //Service 
                Center(
                  child: GestureDetector(
                    onTap: () => launch('tel:+4046589874',),         
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.phone, size: 20),
                          SizedBox(width: 5),
                Text(
                    '404-658-9874',
                      style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                              ),
                      ),
                    ],
                  ),
                ),
                ),
                Text(
                  'You have now booked with Gwinnett Landscaping Co.!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Please call the number to futher book the appointment',
                  style: TextStyle(
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    decoration: TextDecoration.underline,
                  ),
                ),              
              ],
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Close'),
              ),
            ],
          );
        },
      );
    },
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 255, 73, 73),
    ),
    child: Text('BOOK'),
  ),
)
                //End of Compant Widgets
                
                //End of Company Widgets
        
              ],
            ), 


            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

                                    SizedBox(
                    height: 40, // Specify the height of the space between the Text widgets
                    ),
//Next Company       
 SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Search By Zip Code"),
                  ),
                ),

                SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Search by Job"),
                  ),
                ),
SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

SizedBox(
                  width: 200.0,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const LoginPage();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Color.fromARGB(255, 255, 73, 73),
                    ),
                    child: const Text("Sign Out"),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}



class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 25),
            ),
            CircleAvatar(
              radius: 75,
              backgroundImage: AssetImage('images/profile picture.jpg'),
              
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "$firstName $lastName",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "First Name",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              firstName,
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Last Name",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              lastName,
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Phone Number",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "770-123-4567",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Email",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "AndrewsEmail@gmail.com",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              "Password",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "MyPassword123!",
              style: TextStyle(
                fontFamily: 'Berkshire Swash',
                color: Colors.red,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
            ),
            SizedBox(
              width: 350.0,
              height: 40.0,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return const ProfileEdit();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Edit Information"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.red,
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
