import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:womensafe/src/features/authentication/screens/signup_screen.dart';
class WelcomeButton extends StatelessWidget {
  const WelcomeButton({super.key, required this.buttonText, this.onTap, required this.color,  required this.textColor});
  final String buttonText;
 final Widget? onTap;
 final Color color;
 final Color textColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (e)=>onTap!,
          ),
        );
      },
      child: Container(
        padding:const EdgeInsets.all(20.0),
        decoration:  BoxDecoration(
        color:color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),

        ),
      ),
        child: Text(
          buttonText,
        style: TextStyle(
          fontSize: 15.0,
          fontWeight: FontWeight.bold,
          color: textColor,

        ),
        ),
      ),
    );
  }
}
