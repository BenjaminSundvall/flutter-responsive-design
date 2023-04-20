import 'package:flutter/material.dart';
import 'package:flutter_responsive_design/responsive_layout.dart';
import 'package:flutter_responsive_design/tutorial/desktop_body.dart';
import 'package:flutter_responsive_design/tutorial/mobile_body.dart';

/// From a responsive design tutorial.
/// (Source: https://www.youtube.com/watch?v=MrPJBAOzKTQ)
class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        tabletBody: MyDesktopBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
