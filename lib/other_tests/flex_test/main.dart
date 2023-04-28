import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Widget flexibleTestSection = Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Column(
    //     children: [
    //       Flexible(
    //         flex: 1,
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             color: Colors.red,
    //           ),
    //         ),
    //       ),
    //       Flexible(
    //         flex: 3,
    //         child: Padding(
    //           padding: const EdgeInsets.all(8.0),
    //           child: Container(
    //             color: Colors.green,
    //           ),
    //         ),
    //       ),
    //       Flexible(
    //         flex: 2,
    //         child: Row(
    //           children: [
    //             Flexible(
    //               flex: 2,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //             ),
    //             Flexible(
    //               flex: 2,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   color: Colors.blue,
    //                 ),
    //               ),
    //             ),
    //             Flexible(
    //               flex: 1,
    //               child: Padding(
    //                 padding: const EdgeInsets.all(8.0),
    //                 child: Container(
    //                   color: Colors.purple,
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    //
    // const int x = 6;
    // const int y = 7;
    // Widget gridViewTestSection = GridView.builder(
    //   itemCount: x * y,
    //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: x,
    //   ),
    //   itemBuilder: (BuildContext ctx, index) {
    //     return Padding(
    //       padding: const EdgeInsets.all(4.0),
    //       child: Container(
    //         padding: const EdgeInsets.all(4.0),
    //         color: Colors.green,
    //         child: FittedBox(
    //           //
    //           fit: BoxFit.contain,
    //           child: Text(
    //             (index + 1).toString(),
    //             style: const TextStyle(
    //                 color: Colors.black, decoration: TextDecoration.none),
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );

    Widget gridEdgeNumbers = GridView.count(
      // primary: false,
      // padding: const EdgeInsets.all(20),
      // crossAxisSpacing: 10,
      // mainAxisSpacing: 10,
      crossAxisCount: 2,
      children: <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.green,
        ),
        Container(
          color: Colors.blue,
        ),
        Container(
          color: Colors.yellow,
          width: 100,
          height: 100,
        ),
      ],
    );

    Widget tableExample = Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: IntrinsicColumnWidth(),
        1: FlexColumnWidth(),
        2: FixedColumnWidth(64),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 32,
              color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ),
            Container(
              height: 64,
              color: Colors.blue,
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
              color: Colors.purple,
            ),
            Container(
              height: 32,
              color: Colors.yellow,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );

    Widget tableTest = Table(
      border: TableBorder.all(),
      columnWidths: const <int, TableColumnWidth>{
        0: FlexColumnWidth(1),
        1: FlexColumnWidth(10),
        2: FlexColumnWidth(10),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          children: <Widget>[
            Container(
              height: 32,
              color: Colors.green,
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.top,
              child: Container(
                height: 32,
                width: 32,
                color: Colors.red,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 10,
              ),
            ),
          ],
        ),
        TableRow(
          decoration: const BoxDecoration(
            color: Colors.grey,
          ),
          children: <Widget>[
            Container(
              height: 64,
              width: 128,
              color: Colors.purple,
            ),
            Container(
              height: 32,
              color: Colors.yellow,
            ),
            Center(
              child: Container(
                height: 32,
                width: 32,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ],
    );

    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: SafeArea(
        child: Scaffold(
          body: tableTest,
        ),
      ),
    );
  }
}
