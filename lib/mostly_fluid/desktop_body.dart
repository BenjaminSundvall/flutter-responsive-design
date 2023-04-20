import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/constants.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Mostly Fluid - Desktop'),
      ),
      body: Center(
        child: SizedBox(
          width: 1000,
          child: Column(
            children: [
              Container(
                height: 400,
                color: firstColor,
              ),
              Flexible(
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
        ),
      ),
    );
  }
}
