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
          appBarTheme: const AppBarTheme(color: Colors.purple),
          floatingActionButtonTheme:
              const FloatingActionButtonThemeData(backgroundColor: Colors.red)),
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(
          //backgroundColor: Colors.yellow,
          title: const Text("Title")
        ),
        body: Container( alignment: Alignment.center,child: const Text("Hello",),color: Colors.amber,),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Clicked");
          },
          child: const Icon(Icons.home_filled)
        ),
      ),
    );
  }
}
