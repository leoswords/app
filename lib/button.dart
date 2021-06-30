import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leos_words/app.dart';

class Button {
  String label;
  String message;

  Button({required this.label, message}) : this.message = message ?? label;
}

class ButtonWidget extends StatelessWidget {
  final Button _button;
  final OnTouch _onTouch;

  ButtonWidget(this._button, this._onTouch);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () => _onTouch(_button),
            child: Container(
              decoration: BoxDecoration(border: Border.all()),
              child: Center(
                child: Text(_button.label),
              ),
            )));
  }
}
