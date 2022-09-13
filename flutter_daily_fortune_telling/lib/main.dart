import 'package:flutter/material.dart';
import 'package:flutter_daily_fortune_telling/screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      home: GununFali(),
    );
  }
}
