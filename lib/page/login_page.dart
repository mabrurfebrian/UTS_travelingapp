import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travelingapp/components/button.dart';
import 'package:travelingapp/components/squar_tile.dart';
import 'package:travelingapp/components/textField.dart';
import 'package:travelingapp/page/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

//edit text
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
//sign in
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(20)),
              //welcome back
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 25)),
                  Text(
                    'Log In',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50),

              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 210,
                      height: 51,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 255, 198, 193),
                      ),
                      child: Center(
                        child: Text(
                          "G O O G L E",
                          style: GoogleFonts.poppins(
                              color: Color(0XFFD44638),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Container(
                      width: 210,
                      height: 51,
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromARGB(255, 190, 212, 255),
                      ),
                      child: Center(
                        child: Text(
                          "F A C E B O O K",
                          style: TextStyle(
                              color: Color(0XFF4267B2),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 40, bottom: 40)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),

              //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Email / Phone Number',
                obscuretext: false,
              ),

              SizedBox(
                height: 10,
              ),

              //password texfield

              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscuretext: true,
              ),

              SizedBox(height: 14),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        color: Color(0xff1BBA85),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              //sig in
              MyButton(
                ontap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return homePage();
                    }),
                  );
                },
                nameBtn: "Login",
              ), //link next pages
              //forgot password
              SizedBox(
                height: 50,
              ),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t Have An Account?",
                      style: GoogleFonts.poppins(),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "R E G I S T E R",
                      style: TextStyle(
                        color: Color(0xff1BBA85),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
