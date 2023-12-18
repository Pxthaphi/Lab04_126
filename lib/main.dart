import 'package:flutter/material.dart';
import 'package:lab04_126/page/firstpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lab04',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          backgroundColor: const Color.fromARGB(255, 229, 243, 255),
        ),
      ),
      home: const FirstPage(),
    );
  }
}
