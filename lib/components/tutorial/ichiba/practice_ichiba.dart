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
        title: Text(mainPageText),
      ),
      body: Container(
          color: mainPrimaryColor,
          child: Container(
            child: Column(
              children: <Widget>[
                ChangeForm(),
                ChangeForm(),
                ChangeForm(),
                ChangeForm(),
              ],
            ),
          )),
    );
  }
}
