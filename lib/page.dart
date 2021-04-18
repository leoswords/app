import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leos_words/button.dart';

class Page {
  const Page(this.name, this.pictures);

  final String name;
  final List<List<Button>> pictures;
}

class PageWidget extends StatelessWidget {
  PageWidget(this._page) : super(key: ObjectKey(_page));

  final Page _page;

  @override
  Widget build(BuildContext context) {
    var table = Table(
      children: _page.pictures
          .map((rows) => rows.map((cell) => ButtonWidget(cell)).toList())
          .map((cells) => TableRow(children: cells))
          .toList(),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(),
    );

    return table;
  }
}
