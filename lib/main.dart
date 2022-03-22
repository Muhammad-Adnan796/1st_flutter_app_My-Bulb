import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyBulb(),
    );
  }
}

class MyBulb extends StatefulWidget {
  const MyBulb({Key? key}) : super(key: key);

  @override
  State<MyBulb> createState() => _MyBulbState();
}

class _MyBulbState extends State<MyBulb> {
  bool isturnedon = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyBulb App"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              isturnedon ? Icons.lightbulb : Icons.lightbulb_outline,
              size: 200,
              color: !isturnedon ? Colors.black : Colors.yellow,
            ),
            ElevatedButton(
              onPressed: () {
                print("Button Pressed");
                setState(() {
                  isturnedon = !isturnedon;
                });
              },
              child: Text(!isturnedon ? "Turn On" : "Turn Off"),
            )
          ],
        ),
      ),
    );
  }
}
