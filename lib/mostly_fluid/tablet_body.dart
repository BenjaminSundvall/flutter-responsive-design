import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mostly Fluid - Tablet'),
      ),
      body: ListView(
        children: [
          Container(
            height: 400,
            color: firstColor,
          ),
          SizedBox(
            height: 800,
            child: Row(
              children: [
                Flexible(
                  child: Container(
                    color: secondColor,
                  ),
                ),
                Flexible(
                  child: Container(
                    color: thirdColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
