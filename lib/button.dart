import 'package:flutter/widgets.dart';

class Button {
  Button({this.label, this.message});

  String? label;
  String? message;
}

class ButtonWidget extends StatelessWidget {
  ButtonWidget(this._button) : super(key: ObjectKey(_button));

  final Button _button;

  @override
  Widget build(BuildContext context) {
    var label = _button.label;
    if (label == null) {
      return SizedBox(
        child: Container(),
        height: 100,
      );
    }
    return SizedBox(height: 100, child: Center(child: Text(label)));
  }
}
