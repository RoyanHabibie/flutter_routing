import 'package:flutter/material.dart';
import 'home.dart';
import 'menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/home': (context) => const Home(),
        '/menu': (context) => const Menu(),
      },
      title: 'Routing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 207, 0, 0),
        ),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}
