import 'package:animation_used_locale_keys_pdp/scale_animated.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  static const spaceBetween = SizedBox(height: 68.0);

  void _incrementCounter() {
    _counter++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleAnimated(
              key: null,
              duration: const Duration(seconds: 2),
              child: Text(
                'Виджет без ключа: $_counter',
                style: const TextStyle(fontSize: 34.0, color: Colors.red),
              ),
            ),
            spaceBetween,
            ScaleAnimated(
              key: ValueKey(_counter),
              duration: const Duration(seconds: 2),
              child: Text(
                'Виджет c ключом: $_counter',
                style: const TextStyle(fontSize: 34.0, color: Colors.blue),
              ),
            ),
            spaceBetween,
            ElevatedButton(onPressed: _incrementCounter, child: const Text('Press'))
          ],
        ),
      ),
    );
  }
}
