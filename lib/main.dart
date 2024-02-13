import 'package:flutter/material.dart';
import 'package:neki_app/screens/home/IndexScreen.dart';
import 'package:neki_app/screens/home/home_screen.dart';
import 'package:neki_app/screens/home/login_screen.dart';

void main()  
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/Login':(context)=> const LoginScreen(),
        '/Home':(context) => const HomeScreen()
      },
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: IndexScreen()
    );
  }
}