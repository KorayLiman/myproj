import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(color: Colors.green),
          floatingActionButtonTheme:
              FloatingActionButtonThemeData(backgroundColor: Colors.red)),
      home: Scaffold(
        appBar: AppBar(
          //backgroundColor: Colors.yellow,
          title: Text("Title"),
        ),
        body: Text("Hello"),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Clicked");
          },
          child: Text("Button"),
        ),
      ),
    );
  }
}
