import 'package:flutter/material.dart';

class SImage extends StatelessWidget {
  const SImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://cdn-icons-png.flaticon.com/256/11172/11172333.png',
    );
  }
}
