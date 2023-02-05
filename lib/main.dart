// local command "flutter run"
import 'package:flutter/material.dart';
// const
import 'package:warikan_ultimate/const/color.dart';
import 'package:warikan_ultimate/const/text.dart';
// component
import 'components/tutorial/my_home_page.dart' show MyHomePage;

void main() {
  runApp(const MyApp());
}

// Stateless：静的
// StatelessWidgetで定義されているもの : title、theme、home
// あくまでhomeでStatefulWidget（MyHomePage）をimportしているだけ
// StatelessWidgetではstateは扱えない
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
