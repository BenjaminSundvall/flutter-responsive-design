import 'package:flutter/material.dart';

import '../responsive_layout.dart';
import 'desktop_body.dart';
import 'mobile_body.dart';
import 'tablet_body.dart';

/// Column Drop
/// Another popular pattern starts with a multi-column layout and ends up with a
/// single column layout, dropping columns along the way as screen sizes get
/// narrower. Unlike the Mostly Fluid pattern, the overall size of elements in
/// this layout tend to stay consistent. Adapting to various screen sizes
/// instead relies on stacking columns.
/// (Source: https://www.lukew.com/ff/entry.asp?1514)
class ColumnDropPage extends StatefulWidget {
  const ColumnDropPage({Key? key}) : super(key: key);

  @override
  State<ColumnDropPage> createState() => _ColumnDropPageState();
}

class _ColumnDropPageState extends State<ColumnDropPage> {
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
