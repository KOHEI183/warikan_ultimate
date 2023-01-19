// local command "flutter run"
import 'package:flutter/material.dart';
import 'components/tutorial/MyHomePage.dart' show MyHomePage;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Widget(ウィジェット)UIを構築しているパーツ
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'warikan_ultimate',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home：画面に出力される部分
      home: const MyHomePage(title: 'warikan_ultimate Home Page'),
    );
  }
}
