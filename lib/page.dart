import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leos_words/button.dart';

class Page {
  const Page(this.name, this.buttons);

  final String name;
  final List<List<Button>> buttons;
}

class PageWidget extends StatelessWidget {
  PageWidget(this._page) : super(key: ObjectKey(_page));

  final Page _page;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _page.buttons
          .map((rows) => rows.map((cell) => ButtonWidget(cell)).toList())
          .map((cells) => Flexible(
                flex: 10,
                child: Row(children: cells),
              ))
          .toList(),
    );
  }
}
