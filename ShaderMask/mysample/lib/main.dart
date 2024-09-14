import 'package:flutter/material.dart';

/// Flutter code sample for [AspectRatio].

void main() => runApp(const AspectRatioApp());

class AspectRatioApp extends StatelessWidget {
  const AspectRatioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Shader Mask Sample')),
        body: const ShaderMaskExample(),
      ),
    );
  }
}

class ShaderMaskExample extends StatelessWidget {
  const ShaderMaskExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ShaderMask(
        shaderCallback: (bounds) => const RadialGradient(
          colors: [
            Colors.blue,
            Colors.yellow,
            Colors.deepOrange,
          ],
          center: Alignment.topLeft,
          radius: 1,
          tileMode: TileMode.mirror,
        ).createShader(bounds),
        child: Text(
          "Burning Text",
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
