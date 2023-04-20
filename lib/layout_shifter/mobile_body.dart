import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Layout Shifter - Mobile'),
      ),
      body: Column(
        children: [
          Container(
            height: 75,
            color: secondColor,
          ),
          Flexible(
            child: ListView(
              children: [
                Container(
                  height: 700,
                  color: firstColor,
                ),
                Container(
                  height: 900,
                  color: thirdColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
