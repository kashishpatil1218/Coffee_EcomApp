import 'package:ecom_app_clothes/home_page.dart';
import 'package:ecom_app_clothes/splash_screen.dart';
import 'package:ecom_app_clothes/totalpage.dart';
import 'package:flutter/material.dart';

import 'cartpage.dart';
import 'detailpage.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>const SplashScreen(),
        '/home':(context)=>const HomePage(),
        '/detail':(context)=>const detailpage(),
        '/cart':(context)=>const cartpage(),
        '/total':(context)=>const totalpage(),
      },
    );
  }
}
