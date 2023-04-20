import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Column Drop - Tablet'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 1000,
            child: Row(
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
              ],
            ),
          ),
          Container(
            height: 300,
            color: thirdColor,
          ),
        ],
      ),
    );
  }
}
