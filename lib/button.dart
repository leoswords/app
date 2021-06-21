import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    return InkWell(
        onTap: () => _button.onTouch(_button.message),
        child: SizedBox(
          height: 100,
          child: Center(
            child: Text(_button.label),
          ),
        ));
    ;
  }
}
