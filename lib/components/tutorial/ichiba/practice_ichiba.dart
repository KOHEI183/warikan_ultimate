import 'package:flutter/material.dart';
// const
import 'package:warikan_ultimate/const/text.dart';
import 'package:warikan_ultimate/const/color.dart';

class PracticeIchiba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainPageText),
      ),
      body: Container(
        color: mainPrimaryColor,
      ),
    );
  }
}
