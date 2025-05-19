import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Flexible 이해하기')),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.grey[300],
              child: const Center(child: Text('고정된 높이 (100)')),
            ),

            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: const Center(child: Text('Flexible flex: 1')),
              ),
            ),

            Flexible(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: const Center(child: Text('Flexible flex: 2')),
              ),
            ),

            Flexible(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Flexible flex: 3')),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Flexible flex: 3')),
              ),
            ),
            Flexible(
              flex: 3,
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Flexible flex: 3')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
