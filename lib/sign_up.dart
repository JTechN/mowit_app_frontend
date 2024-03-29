// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
bool? isContractor = false; // variable type is now nullable boolean
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/logo.png'),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              width: 350.0,
              height: 40.0,
              child: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'First Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              width: 350.0,
              height: 40.0,
              child: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Last Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              width: 350.0,
              height: 40.0,
              child: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              width: 350.0,
              height: 40.0,
              child: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'User Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            const SizedBox(
              width: 350.0,
              height: 40.0,
              child: TextField(
                cursorColor: Colors.red,
                decoration: InputDecoration(
                  labelStyle: TextStyle(color: Colors.red),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)),
                  labelText: 'Password',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
            ),
            SizedBox(
              width: 350.0,
              height: 40.0,
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
                  backgroundColor: Colors.red,
                ),
                child: const Text("Create Account"),
              ),
            ),

            Center(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Checkbox(
        value: isContractor,
        onChanged: (bool? value) {
          setState(() {
            isContractor = value;
          });
        },
      ),
      const SizedBox(width: 8.0),
      Text(
        'Are you a contractor?',
        style: TextStyle(
          color: Colors.red,
          fontSize: 18,
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
