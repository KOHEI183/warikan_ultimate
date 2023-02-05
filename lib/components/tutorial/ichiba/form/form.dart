import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChangeForm extends StatefulWidget {
  @override
  _ChangeFormState createState() => _ChangeFormState();
}

class _ChangeFormState extends State<ChangeForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Container(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              children: <Widget>[
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (String? value) {
                    return (value != null && !value.contains('@'))
                        ? 'メールアドレスを正しく入力してください'
                        : null;
                  },
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    labelStyle: TextStyle(
                      fontSize: 12,
                      color: Colors.blue[300],
                    ),
                    labelText: 'メールアドレス',
                    floatingLabelStyle: const TextStyle(fontSize: 12),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide(
                        color: Colors.blue[100]!,
                        width: 1.0,
                      ),
                    ),
                  ),
                ),
              ],
            )));
  }
}
