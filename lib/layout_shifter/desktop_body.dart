import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Layout Shifter - Desktop'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            color: secondColor,
          ),
          SizedBox(
            width: 750,
            child: Column(
              children: [
                Flexible(
                  child: Container(
                    color: firstColor,
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
