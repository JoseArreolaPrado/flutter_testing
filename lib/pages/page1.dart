import 'package:flutter/material.dart';
import 'package:tests_flutter/widgets/drawer.dart';

class Page1 extends StatefulWidget {
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page1'),
      ),
      drawer: const drawer(),
      body: const Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
