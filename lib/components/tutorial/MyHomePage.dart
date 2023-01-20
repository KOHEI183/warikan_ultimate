// ライブラリに名前をつけるために使用(推奨)
library my_home_page;

// flutterのパッケージを使用するためにimportする
import 'package:flutter/material.dart';
// const
import 'package:warikan_ultimate/const/text.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // finalはプログラムを実行して値が代入されたあと変更できない
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 変数　Integer型の_counterで初期値は0
  int _counter = 0;

  void _incrementCounter() {
    /**
     *
     * 更新関数
     * setState() を呼び出さずに _counter を変更した場合、ビルドメソッドは再呼び出されないので
     * ビルドメソッドは再コールされないので、何も起こらないように見える。
     */
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // このメソッドは setState が呼ばれるたびに再実行される
    // 更新が必要なものを再構築

    // Scaffoldウィジェットは、ウィジェットを配置するための枠のようなものです。
    // HTMLでいうところのbody
    return Scaffold(
      // appbarの設定
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // body: ウィジェット（中身）
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(tutorialText),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      // ウィジェット（下のナビゲーションバー)
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // この末尾のカンマは、ビルドメソッドの自動書式化を円滑にするものです.
    );
  }
}
