import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_color/random_color.dart';

// Actions!
typedef void OnTouch(String? message);

class Button {
  String label;
  String message;
  OnTouch onTouch;

  Button({required this.label, message, required this.onTouch})
      : this.message = message ?? label;
}

class ButtonWidget extends StatelessWidget {
  final Button _button;

  ButtonWidget(this._button);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () => _button.onTouch(_button.message),
            child: Container(
              color: RandomColor().randomMaterialColor(),
              child: Center(
                child: Text(_button.label),
              ),
            )));
  }
}
