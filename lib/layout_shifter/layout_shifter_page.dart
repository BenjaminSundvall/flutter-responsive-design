import 'package:flutter/material.dart';

import '../responsive_layout.dart';
import 'desktop_body.dart';
import 'mobile_body.dart';
import 'tablet_body.dart';

/// Layout Shifter
/// This pattern does the most to adapt across different screen sizes. That is,
/// different layouts are used on large, medium, and small screens. Because this
/// inherently requires more work, it seems to be less popular than the previous
/// two patterns I outlined.
/// (Source: https://www.lukew.com/ff/entry.asp?1514)
class LayoutShifterPage extends StatefulWidget {
  const LayoutShifterPage({Key? key}) : super(key: key);

  @override
  State<LayoutShifterPage> createState() => _LayoutShifterPageState();
}

class _LayoutShifterPageState extends State<LayoutShifterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        tabletBody: MyTabletBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
