import 'package:flutter/material.dart';
import 'package:myapp/home_app.dart';

void main() => runApp(const MyApp()); // Added const here

class MyApp extends StatelessWidget {
  // Add the key parameter to the constructor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      home: const HomeApp(), // Added const here
    );
  }
}