import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button {
  Button({this.label, this.message, required this.onTouch});

  String? label;
  String? message;
  OnTouch onTouch;
}

// Actions!
typedef void OnTouch(String? message);

class ButtonWidget extends StatelessWidget {
  ButtonWidget(this._button) : super(key: ObjectKey(_button));

  final Button _button;

  @override
  Widget build(BuildContext context) {
    var label = _button.label;
    var child = label == null
        ? SizedBox(
            child: Container(),
            height: 100,
          )
        : InkWell(
            onTap: () => _button.onTouch(_button.message),
            child: SizedBox(
              height: 100,
              child: Center(
                child: Text(label),
              ),
            ));
    return child;
  }
}
