import 'package:flutter/material.dart';
import 'package:todoapp/features/todo/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App",
      debugShowCheckedModeBanner: false,
      
      home: HomePage(),
    );
  }
}
