// local command "flutter run"
import 'package:flutter/material.dart';
// const
import "const/color.dart";
import "const/text.dart";
// component
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
      title: serviceTitle,
      theme: ThemeData(
          // app bar color
          primaryColor: mainPrimaryColor,
          // bg color
          scaffoldBackgroundColor: mainBackGroundColor,
          // text color
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: mainTextColor)),
      // home：画面に出力される部分
      home: const MyHomePage(title: mainPageText),
    );
  }
}
