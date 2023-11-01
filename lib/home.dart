import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Routing and Widget',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Center(
            child: Text('Welcome!'),
          ),
          TextButton.icon(
            onPressed: () {
              Navigator.pushNamed(context, '/menu');
            },
            icon: const Icon(Icons.skip_next),
            label: const Text('Next'),
          ),
        ],
      ),
    );
  }
}
