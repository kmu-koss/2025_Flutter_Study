import 'package:app_study/success.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('회원가입 페이지'),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
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
                controller: _passwordController,
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
            SizedBox(height: 500,),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SuccessPage(
                    id: _idController.text,
                    password: _passwordController.text,
                    email: _eMailController.text,
                  ),));
            }, child: const Text('회원가입',
              style: TextStyle(
                fontSize: 50,
              ),
            )),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.access_alarm_outlined),
          label: '내 정보',
        ),
      ]),
    );
  }
}
