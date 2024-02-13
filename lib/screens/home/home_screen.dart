import 'package:flutter/material.dart';
import 'package:neki_app/screens/helpers/listview_cards.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF200020),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 25,
            height: 30,
            decoration: const BoxDecoration(
              color: Color.fromARGB(83, 201, 146, 252),
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: const Icon(Icons.person_outline, color: Colors.white,)
          ),
        ),
        title: const Column(
          children: [
            Text('Hola,', style: TextStyle(fontSize: 11, color: Colors.white),),
            Text('Emanuel', style: TextStyle(fontSize: 13, color: Colors.white),)
          ],
        ),
        actions: const [
          Icon(Icons.notifications_outlined, color: Colors.white, size: 30,),
          SizedBox(width: 10,),
          Text('?', style: TextStyle(color: Colors.white, fontSize: 30),),
          SizedBox(width: 14,)
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: size.height*0.4,
                color: const Color(0xFFF23078),
              ),
              Container(
                width: double.infinity,
                height: size.height*0.3,
                color: const Color(0xFF200020),
                child: const Column(
                  children: [
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Disponible', style: TextStyle(color: Colors.white70)),
                          IconButton(onPressed: null, icon: Icon(Icons.remove_red_eye_outlined, color: Colors.white70,))
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(" 100.000,00", style: TextStyle(fontSize: 30, color: Colors.white)),
                    SizedBox(height: 10,),
                    Text('Total: 1.500.730,67', style: TextStyle(color: Colors.white70),)
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 200),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return cards[index];
              },
            ),
          )
        ],
      ),

    );
  }
}