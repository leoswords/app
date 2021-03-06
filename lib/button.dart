import 'package:flutter/widgets.dart';

@immutable
class Button {
  final String label;
  final String message;

  const Button({required this.label, message}) : message = message ?? label;
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
