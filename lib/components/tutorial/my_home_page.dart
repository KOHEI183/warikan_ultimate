// ライブラリに名前をつけるために使用(推奨)
library my_home_page;

// flutterのパッケージを使用するためにimportする
import 'package:flutter/material.dart';
import 'package:warikan_ultimate/components/tutorial/ichiba/practice_ichiba.dart';
import 'package:warikan_ultimate/components/tutorial/yamada/practice_yamada.dart';
// const
import 'package:warikan_ultimate/const/text.dart';

// Stateful：動的
// StatefulWidgetを継承したクラス : MyHomePage
// Stateを継承したクラス : _MyHomePageState
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  // finalはプログラムを実行して値が代入されたあと変更できない
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _type = "偶数";
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
      if (_counter % 2 == 0) {
        _type = "偶数";
      } else {
        _type = "奇数";
      }
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
        //列を実現するWidget
        title: Text(widget.title),
      ),
      // body: ウィジェット（中身）
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              // 変数の表示,変数の更新
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              '$_type',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            // trueのときだけ表示させることができる
            if (_counter % 2 == 0)
              Text('偶数です', style: TextStyle(fontSize: 20, color: Colors.red)),
            ElevatedButton(
              onPressed: () {
                // ボタンを押したときのコード
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PracticeIchiba()),
                );
              },
              child: Text(pageLinkIchiba),
            ),
            ElevatedButton(
              onPressed: () {
                // ボタンを押したときのコード
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PracticeYamada()),
                );
              },
              child: Text(pageLinkYamada),
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
