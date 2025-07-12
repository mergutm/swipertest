import 'package:flutter/material.dart';
import 'package:myapp/home_app.dart';
import 'package:provider/provider.dart';
import 'provider/movie_provider.dart';

void main() => runApp(const MyProvider()); // Added const here

class MyProvider extends StatelessWidget {
  const MyProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MovieProvider(), lazy: false),
      ],
      child: const MyApp(),
    );
  }
}

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
