import 'package:flutter/material.dart';

/// Flutter code sample for [FittedBox].

void main() => runApp(const FittedBoxApp());

class FittedBoxApp extends StatelessWidget {
  const FittedBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FittedBox Sample')),
        body: const Center(
          child: FittedBoxExample(),
        ),
      ),
    );
  }
}

class FittedBoxExample extends StatelessWidget {
  const FittedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 300,
      color: Colors.blue,
      child: const FittedBox(
        fit: BoxFit.fill,
        child: Placeholder(),
      ),
    );
  }
}
