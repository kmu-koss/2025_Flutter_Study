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
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _eMailController = TextEditingController();
  String _id = '';
  String _password = '';
  String _eMail = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("인풋 예제"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _idController,
              decoration: const InputDecoration(
                labelText: "ID",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: _eMailController,
              decoration: const InputDecoration(
                labelText: "E-Mail",
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              _id = _idController.text;
              _password = _passwordController.text;
              _eMail = _eMailController.text;
            });
          }, child: const Icon(Icons.app_registration_sharp)),
          Text(_id), Text(_password), Text(_eMail),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
          label: '내 정보',
        ),
      ],),
    );
  }
}
