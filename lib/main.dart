import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  String _img = "assets\AREmoji_20220114_174931_50[6].gif";
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
        body: TestContainer(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("Clicked");
            },
            child: const Icon(Icons.home_filled)),
      ),
    );
  }

  Widget TestContainer() {
    return Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.fromLTRB(10, 300, 0, 10),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: NetworkImage(
                    "https://static.wixstatic.com/media/26e925_c36af2b866b34224b2eb366c201d8213~mv2.gif"))));
  }

  Widget ContainerLessons() {
    return Center(
      child: Container(
        width: 100,
        height: 100,
        // margin: EdgeInsets.only(left: 40, top: 0, right: 0, bottom: 40),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.red,
            border: Border.all(width: 8, color: Colors.purple),
            borderRadius: BorderRadius.circular(40),
            image: DecorationImage(
                image: NetworkImage(
                    "https://static.wixstatic.com/media/26e925_c36af2b866b34224b2eb366c201d8213~mv2.gif"),
                fit: BoxFit.fill),
            boxShadow: [
              BoxShadow(
                  color: Colors.purple, offset: Offset(20, 20), blurRadius: 15)
            ]),
      ),
    );
  }
}


/*Container(
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
        )*/