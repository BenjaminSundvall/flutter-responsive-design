import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Layout Shifter - Tablet'),
      ),
      body: ListView(
        children: [
          Container(
            height: 150,
            color: secondColor,
          ),
          Container(
            height: 500,
            color: firstColor,
          ),
          Container(
            height: 700,
            color: thirdColor,
          ),
        ],
      ),
    );
  }
}
