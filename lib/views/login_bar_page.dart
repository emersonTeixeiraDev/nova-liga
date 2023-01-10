import 'package:flutter/material.dart';

class LoginBarPage extends StatelessWidget {
  const LoginBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          color: Colors.blue,
          height: 140,
        ),
        Container(
          color: Colors.white,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.black26,
                width: 72,
                height: 100,
              ),
              const Text('Aprender Flutter'),
              ElevatedButton(
                  onPressed: () {}, child: const Icon(Icons.arrow_drop_up))
            ],
          ),
        ),
      ]),
    );
  }
}
