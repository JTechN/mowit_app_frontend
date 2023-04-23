// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/login.dart';
import 'package:mowit_app/profile_edit.dart';
import 'package:mowit_app/profile_view.dart';
import 'package:mowit_app/homepage.dart';
import 'package:mowit_app/settings.dart';

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
                    child: const Text("BOOK"),
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
                      "Serives Offered: Lawn Cutting \$100 minimum (Size of lawn is facotred)",
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
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
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
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets
                SizedBox(
                    width: 20, // Specify the height of the space between the Text widgets
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
                SizedBox(
                  width: 80.0,
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
                    child: const Text("BOOK"),
                  ),
                ),
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
                SizedBox(
                  width: 80.0,
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
                    child: const Text("BOOK"),
                  ),
                ),
                //End of Compant Widgets
                
                //End of Company Widgets
        
              ],
            ), 


            SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
                    ),

                                    SizedBox(
                    height: 20, // Specify the height of the space between the Text widgets
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
                )

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
