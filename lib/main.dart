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
        body: Builder(
            builder: (context) => Padding(
                  padding: const EdgeInsets.all(20),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Hello World Travel',
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue[800]),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(5),
                          child: Text(
                            'Discover the World',
                            style: TextStyle(
                                fontSize: 20, color: Colors.deepPurpleAccent),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Image.network(
                              'https://www.itying.com/images/flutter/2.png',
                              width: 200,
                              height: 200),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: TextButton(
                            onPressed: () => contactUs(context),
                            child: const Text('Contact  Us'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}

void contactUs(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Contact Us'),
        content: const Text('Mail us at chechechec@.com'),
        actions: <Widget>[
          TextButton(
              child: const Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              })
        ],
      );
    },
  );
}
