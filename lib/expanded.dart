import 'package:flutter/material.dart';

void main() {
  runApp(const ExpandedExampleApp());
}

class ExpandedExampleApp extends StatelessWidget {
  const ExpandedExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Expanded Example')),
        body: Column(
          children: [
            Container(
              height: 100,
              color: Colors.red,
              child: const Center(child: Text('height: 100', style: TextStyle(color: Colors.white))),
            ),
            Container(
              height: 200,
              color: Colors.green,
              child: const Center(child: Text('height: 200', style: TextStyle(color: Colors.white))),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('expanded', style: TextStyle(color: Colors.white))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}