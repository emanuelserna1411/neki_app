import 'package:flutter/material.dart';
import 'package:neki_app/screens/widgets/AppBarWidget.dart';
import 'package:neki_app/screens/widgets/IndexPage.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.appBarCustom(),
      body: const IndexPage(),
      
    );
  }

}

