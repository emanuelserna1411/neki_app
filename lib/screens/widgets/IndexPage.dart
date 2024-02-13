import 'package:flutter/material.dart';
import 'package:neki_app/screens/home/login_screen.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({
    super.key,
  });

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFF200020),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Text('Neki', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 85, color: Colors.white),),
                  ),
                  const SizedBox(height: 130,),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      
                      decoration:  InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(83, 201, 146, 252),
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('+57 |', style: TextStyle(fontSize: 17, color: Colors.white60),),
                        ),
                        border: OutlineInputBorder(),
                        
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: size.width*0.93,
                    height: 55,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF23078),
                      borderRadius: BorderRadius.all(Radius.circular(3))
                    ),
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          Navigator.pushNamed(context, '/Login');
                        });
                      }, 
                      child: const Center(child: Text('Entra', style: TextStyle(color: Colors.white, fontSize: 17),))),
                  ),
                  const SizedBox(height: 100),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.qr_code, color: Colors.white,),
                      Text('Usa tu QR', style: TextStyle(color: Colors.white),),
                      SizedBox(width: 30,),
                      Icon(Icons.credit_card, color: Colors.white,),
                      Text('Paga con tu Tarjeta', style: TextStyle(color: Colors.white),),
                      SizedBox(width: 30,),
                      Text('by', style: TextStyle(color: Colors.white54),),
                      Icon(Icons.money, color: Colors.white54,)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}