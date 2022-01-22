import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  Container CreateContainer(String Letter, Color Col, [double margin = 0]) {
    return Container(
      width: 60,
      height: 60,
      alignment: Alignment.center,
      color: Col,
      margin: EdgeInsets.only(top: margin),
      child: Text(
        Letter,
        style: TextStyle(fontSize: 32),
      ),
    );
  }

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
        body: Container(
          color: Colors.blue,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [BringRow(), Expanded(child: BringColumn())],
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

  Column BringColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: CreateContainer('E', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('R', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('S', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('L', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('E', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('R', Colors.orange, 15),
        ),
        Expanded(
          child: CreateContainer('I', Colors.orange, 15),
        ),
      ],
    );
  }

  Row BringRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CreateContainer('D', Colors.orange),
        CreateContainer('A', Colors.orange),
        CreateContainer('R', Colors.orange),
        CreateContainer('T', Colors.orange),
      ],
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