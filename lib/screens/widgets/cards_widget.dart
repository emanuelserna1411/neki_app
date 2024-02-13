import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  Icon icon;
  String text;
  CardWidget({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 80,
      child: Column(
        children: [
          Card(
            elevation: 10,
            child: icon,
          ),
          const SizedBox(height: 10,),
          Text(text)
        ],
      )
    );
  }
}