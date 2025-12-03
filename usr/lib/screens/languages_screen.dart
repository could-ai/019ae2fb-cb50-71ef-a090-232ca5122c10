import 'package:flutter/material.dart';

class LanguagesScreen extends StatelessWidget {
  const LanguagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tillar'),
      ),
      body: const Center(
        child: Text('Languages Screen'),
      ),
    );
  }
}
