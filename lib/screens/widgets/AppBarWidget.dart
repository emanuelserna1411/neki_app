import 'package:flutter/material.dart';



class AppBarWidget
{
  static AppBar appBarCustom() {
    return AppBar(
      backgroundColor: const Color(0xFF200020),
      leading: const Icon(Icons.help_outline_rounded, size: 35, color: Colors.white,),
      actions: [
        Container(
          width: 220,
          height: 45,
          decoration: const BoxDecoration(
            color: Color.fromARGB(83, 201, 146, 252),
            borderRadius: BorderRadius.all(Radius.circular(10)) 

          ),
          child: const Row(
            children: [
              SizedBox(width: 10,),
              SizedBox(
                width: 17,
                height: 17,
                child: CircularProgressIndicator(color: Colors.purple, backgroundColor: Colors.white,)
              ),
              SizedBox(width: 5,),
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Text('Clave', style: TextStyle(fontSize: 12, color: Colors.white),),
                    Text('dinámica', style: TextStyle(fontSize: 12, color: Colors.white),),
                  ],
                ),
              ),
              SizedBox(width: 5,),
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Text('201909', style: TextStyle(fontSize: 17.5, color: Colors.white),),
              ),
              SizedBox(width: 5,),
              Padding(
                padding: EdgeInsets.all(3.0),
                child: Icon(Icons.lock_outlined, size: 26, color: Colors.white,),
              )
            ],
          ),
          
        ),
        const SizedBox(width: 5,)
      ],
    );
  }

}