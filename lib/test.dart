import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: InputExample(),
  ));
}

class InputExample extends StatefulWidget {
  const InputExample({super.key});

  @override
  State<InputExample> createState() => _InputExampleState();
}

class _InputExampleState extends State<InputExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입 페이지'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'ID',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'E-Mail',
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('회원가입'))
        ],
      ),
    );
  }
}

