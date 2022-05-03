import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button {
  String label;
  String message;

  Button({required this.label, message}) : message = message ?? label;
}

class ButtonWidget extends StatelessWidget {
  final Button _button;

  const ButtonWidget(this._button, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all()),
      child: Center(
        child: Text(_button.label),
      ),
    );
  }
}
