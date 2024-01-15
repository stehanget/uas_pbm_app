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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Refiandri Indrawan (2019240019)'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
            child: Text(
          widget.title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        )),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.fromLTRB(0, 24.0, 60.0, 0),
        decoration: const BoxDecoration(color: Colors.blue),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 320.0),
          decoration: const BoxDecoration(color: Colors.green),
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 24.0, 160.0, 24.0),
            padding: const EdgeInsets.all(40.0),
            decoration: const BoxDecoration(color: Colors.yellow),
          ),
        ),
      ),
    );
  }
}
