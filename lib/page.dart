import 'package:flutter/widgets.dart';
import 'package:leos_words/picture.dart';

class Page {
  //TODO rename ?
  const Page(this.name, this.pictures);

  final String name;
  final List<List<Picture>> pictures;
}

class PageWidget extends StatelessWidget {
  PageWidget(this._page) : super(key: ObjectKey(_page));

  final Page _page;

  @override
  Widget build(BuildContext context) {
    return Table(
      children: _page.pictures
          .map((rows) => rows.map((cell) => PictureWidget(cell)).toList())
          .map((cells) => TableRow(children: cells))
          .toList(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
    );
  }
}
