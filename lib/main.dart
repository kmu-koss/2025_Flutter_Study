import 'package:flutter/material.dart';
import 'success.dart';

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
  final TextEditingController _passController = TextEditingController();
  final TextEditingController _eMailController = TextEditingController();

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
              controller: _idController,
              decoration: const InputDecoration(
                labelText: 'ID',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              obscureText: true,
              controller: _passController,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: TextField(
              controller: _eMailController,
              decoration: const InputDecoration(
                labelText: 'E-Mail',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SuccessPage(
                    id: _idController.text,
                    password: _passController.text,
                    email: _eMailController.text,
                  ),
                ),
              );
            },
            child: const Text('회원가입'),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          label: '추가',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.verified_user),
          label: '내 정보',
        ),
      ]),
    );
  }
}
