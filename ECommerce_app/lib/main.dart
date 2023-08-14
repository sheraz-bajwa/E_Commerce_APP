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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(46, 46, 72, 1)),
        useMaterial3: true,
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(46, 46, 72, 1),
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(46, 46, 72, 1),
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
          child: Container(
            color: Colors.amber,
            height: 300,
            width: double.infinity,
          ),
        ));
  }
}
