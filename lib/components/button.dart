import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:food_delivery/pages/homePage.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.ontap, required this.nameBtn});

  void Function()? ontap;
  String nameBtn;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: ontap,
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Color(0xFF1BBA85), borderRadius: BorderRadius.circular(8)),
          child: Center(
            child: Text(nameBtn,
                style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffF3F5F6))),
          ),
        ),
      ),
    );
  }
}
