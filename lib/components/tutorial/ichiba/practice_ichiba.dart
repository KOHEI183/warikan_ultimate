import 'package:flutter/material.dart';
import 'package:warikan_ultimate/components/tutorial/ichiba/form/form.dart';
// const
import 'package:warikan_ultimate/const/text.dart';
import 'package:warikan_ultimate/const/color.dart';

// StatelessWidgetクラスという親クラスをPracticeIchibaに継承している
class PracticeIchiba extends StatelessWidget {
  // Widget buildをStatelessWidgetの特性をもたせたいのでextendsしている
  // buildメソッドもStatelessWidgetの性質をextendsされていてる
  // StatelessWidgetは書き換えらずあくまでも、子クラスで上書きしたいため@overrideをする
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              //列を実現するWidget
              Row(
        children: [
          Icon(
            Icons.favorite,
            color: Colors.pink,
            size: 24.0,
          ),
          Text(mainPageText),
        ],
      )),
      body: Container(
          color: mainPrimaryColor,
          child: Container(
            // 縦に並べる、行を実現するWidget
            child: Column(
              children: <Widget>[
                // ChangeForm(),
                // ChangeForm(),
                // ChangeForm(),
                // ChangeForm(),
                const Text("テストテキスト"),
                TextButton(
                    onPressed: () => {print("ボタンが押された")}, // ボタンが押された時のイベント
                    child: const Text("テキストボタン")), // 画面上に表示する文字,
                //列を実現するWidget
                Row(
                  // 列の要素を等間隔で表示するというプロパティ値
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                    ),
                    Icon(
                      Icons.audiotrack,
                      color: Colors.green,
                      size: 30.0,
                    ),
                    Icon(
                      Icons.beach_access,
                      color: Colors.blue,
                      size: 36.0,
                    ),
                  ],
                )
              ],
            ),
          )),
      drawer: const Drawer(child: Center(child: Text("左のDrawer"))),
      endDrawer: const Drawer(child: Center(child: Text("右EndDrawer"))),
    );
  }
}
