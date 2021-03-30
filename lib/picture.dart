import 'package:flutter/widgets.dart';

class Picture {
  const Picture(this.img, this.text, {this.value});

  final String img; //TODO image ?
  final String text;
  final String? value;
}

class PictureWidget extends StatelessWidget {
  PictureWidget({this.pec}) : super(key: ObjectKey(pec));

  final Picture pec;

  @override
  Widget build(BuildContext context) {
    Picture s= Picture("sdf", "sdf");

    return Container();
  }
}
