import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World Travel',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Hello World Travel'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Hello World Travel',
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[800]),
              ),
              const Text(
                'Discover the World',
                style: TextStyle(fontSize: 20, color: Colors.deepPurpleAccent),
              ),
              Image.network('https://www.itying.com/images/flutter/2.png',
                  width: 200, height: 200),
              TextButton(
                onPressed: () => true,
                child: const Text('Contact  Us'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
