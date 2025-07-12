import 'package:flutter/material.dart';

class HomeApp extends StatelessWidget {
  // Add the key parameter to the constructor
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home App')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.amber,
          ),
          SizedBox(height: 25),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.25,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
