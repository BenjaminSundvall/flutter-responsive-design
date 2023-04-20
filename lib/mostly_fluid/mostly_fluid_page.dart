import 'package:flutter/material.dart';

import '../responsive_layout.dart';
import 'desktop_body.dart';
import 'mobile_body.dart';
import 'tablet_body.dart';

/// Mostly Fluid
/// The most popular pattern was perhaps surprisingly simple: a multi-column
/// layout that introduces larger margins on big screens, relies on fluid grids
/// and images to scale from large screens down to small screen sizes, and
/// stacks columns vertically in its narrowest incarnations.
/// (Source: https://www.lukew.com/ff/entry.asp?1514)
class MostlyFluidPage extends StatefulWidget {
  const MostlyFluidPage({Key? key}) : super(key: key);

  @override
  State<MostlyFluidPage> createState() => _MostlyFluidPageState();
}

class _MostlyFluidPageState extends State<MostlyFluidPage> {
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
