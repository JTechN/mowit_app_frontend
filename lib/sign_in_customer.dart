// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mowit_app/login.dart';
import 'package:mowit_app/main.dart';

class SignInCustomer extends StatefulWidget {
  const SignInCustomer({super.key});

  @override
  _SignInCustomerState createState() => _SignInCustomerState();
}

class _SignInCustomerState extends State<SignInCustomer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Customer Login"),
        centerTitle: true,
        leading: GestureDetector(
          child: const Icon(Icons.arrow_back),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const LoginPage();
                },
              ),
            );
          },
        ),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(22),
            ),
            Image.asset('images/logo.png'),
            Container(
              padding: const EdgeInsets.only(top: 50),
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
                  labelText: 'User Name/Phone Number',
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
                        return const HomePage();
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.red,
                ),
                child: const Text("Sign In"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
