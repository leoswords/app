import 'package:flutter/widgets.dart';

class Picture {
  const Picture(this.img, this.text, this.value);

  final String img; //TODO image ?
  final String text;
  final String value;
}

class PictureWidget extends StatelessWidget {
  PictureWidget(this._picture) : super(key: ObjectKey(_picture));

  final Picture _picture;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_picture.img),
          Text(_picture.text),
          Text(_picture.value),
        ],
      ),
    );
  }
}
