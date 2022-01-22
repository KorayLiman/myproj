import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String _img =
      "https://www.sivasizpsikoloji.com/gorseller/komponent/header--ortali-logo/komponent4412.png";
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
            title: const Text("Title")),
        body: Container(
          color: Colors.blue.shade400,
          child: Column(
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("K"),
                  Text("o"),
                  Text("r"),
                  Text("a"),
                  Text("y"),
                ],
              ),
              Icon(
                Icons.circle,
                size: 64,
                color: Colors.red,
              ),
              Icon(
                Icons.circle,
                size: 64,
                color: Colors.green,
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Clicked");
            },
            child: const Icon(Icons.home_filled)),
      ),
    );
  }

  Widget ContainerLessons() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(left: 40, top: 100, right: 40, bottom: 100),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red,
            border: Border.all(width: 8, color: Colors.purple),
            borderRadius: BorderRadius.circular(40),
            image:
                DecorationImage(image: NetworkImage(_img), fit: BoxFit.contain),
            boxShadow: [
              BoxShadow(
                  color: Colors.purple, offset: Offset(20, 20), blurRadius: 15)
            ]),
      ),
    );
  }
}
