import 'dart:async';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/home');
    },);
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: 400,
            child: const Image(
              image: AssetImage('assets/img/bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: double.infinity,
            color: Colors.black.withOpacity(0.6),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 60),
            child: Text(
              'Coffee Shop ',
              style: GoogleFonts.caveat(
                  textStyle: const TextStyle(fontSize: 55, color: Color(0xffCA9867),),),
            ),
          )
        ],
      ),
    );
  }
}
