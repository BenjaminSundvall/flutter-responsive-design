import 'package:flutter/material.dart';

import 'mostly_fluid/mostly_fluid_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      // home: const TutorialPage(),
      home: const MostlyFluidPage(),
      // home: const ColumnDropPage(),
      // home: const LayoutShifterPage(),
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    );
  }
}
