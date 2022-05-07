import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Random words',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.blue,
      ),
      home: const MyHomePage(title: 'Random words'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Random Words:',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(wordPair.asPascalCase,
                    style: TextStyle(fontSize: 22.0, color: Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    Text(wordPair.asPascalCase);
                  });
                },
                style: ElevatedButton.styleFrom(primary: Colors.white),
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ]),
      ),
    );
  }
}
