import 'package:flutter/material.dart';

// const
import 'package:warikan_ultimate/const/text.dart';
import 'package:warikan_ultimate/const/color.dart';

class PracticeYamada extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mainPageText),
      ),
      body: Container(
        color: mainTextColor,
      ),
    );
  }
}
