import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget flexibleTestSection = Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Flexible(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.green,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              children: [
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    const int x = 6;
    const int y = 7;
    Widget gridViewTestSection = GridView.builder(
      itemCount: x * y,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: x,
      ),
      itemBuilder: (BuildContext ctx, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            padding: const EdgeInsets.all(4.0),
            color: Colors.green,
            child: FittedBox(
              //
              fit: BoxFit.contain,
              child: Text(
                (index + 1).toString(),
                style: const TextStyle(
                    color: Colors.black, decoration: TextDecoration.none),
              ),
            ),
          ),
        );
      },
    );

    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      home: flexibleTestSection,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
    );
  }
}
