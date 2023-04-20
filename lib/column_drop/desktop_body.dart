import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Column Drop - Desktop'),
      ),
      body: Row(
        children: [
          Container(
            width: 250,
            color: secondColor,
          ),
          Flexible(
            flex: 2,
            child: Container(
              color: firstColor,
            ),
          ),
          Container(
            width: 250,
            color: thirdColor,
          ),
        ],
      ),
    );
  }
}
