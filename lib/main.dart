import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrimentCounter() {
    setState(() {
      _counter--;
    });
  }

  List image = ["images/img.png", "images/img_1.png","images/img.png", "image"
      "s/img_1.png","images/img.png", "images/img_1.png","images/img.png", "images/img_1.png"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: GridView.count(
          crossAxisCount: 2, // 2 columns
          children: List.generate(image.length, (index) {
            return Card(
              color: Colors.blue[100],
              child: Center(child: Image(image: AssetImage(image[index]))),
            );
          }),
        ),
      ),
    );
  }
}
