import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Column Drop - Mobile'),
      ),
      body: ListView(
        children: [
          Container(
            height: 1200,
            color: firstColor,
          ),
          Container(
            height: 600,
            color: secondColor,
          ),
          Container(
            height: 600,
            color: thirdColor,
          ),
        ],
      ),
    );
  }
}
