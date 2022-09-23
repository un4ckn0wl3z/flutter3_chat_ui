import 'package:chat_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Chat UI',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // colorScheme: ColorScheme.fromSwatch().copyWith(
        //   secondary: const Color(0xFFFEF9EB),
        // ),
      ),
      home: const HomeScreen(),
    );
  }
}

// https://youtu.be/h-igXZCCrrc?list=PLzOt3noWLMthJKm8SJl2zmUlJiZp7fzo7&t=1416