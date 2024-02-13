import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme =  PinTheme(
      width: 56,
      height: 60,
      textStyle: const TextStyle(
        fontSize: 20,
        color: Colors.black
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5)
      )
    );
    return Scaffold(
      body: Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF200020),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.all(38.0),
              child: Text('Escribe tu clave', style: TextStyle(fontSize: 25, color: Colors.white)),
            ),
          ),
          const SizedBox(height: 80),
          Pinput(
            length: 4,
            defaultPinTheme: defaultPinTheme,
            onCompleted: (value) {
              setState(() {
                Navigator.pushNamed(context, '/Home');
              });
            },
          ),
          const SizedBox(height: 20),
          const Text('No dudamos que seas tu...', style: TextStyle(color: Colors.white, fontSize: 12),),
          const Text('Pero es mejor confirmar :)', style: TextStyle(color: Colors.white, fontSize: 12), )
        ],
      ),
    ) ,
    );
  }
}