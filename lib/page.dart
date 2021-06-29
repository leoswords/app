import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leos_words/app.dart';
import 'package:leos_words/button.dart';

class Page {
  final String name;
  final List<List<Button>> buttons;

  const Page(this.name, this.buttons);
}

class PageWidget extends StatelessWidget {
  final Page _page;
  final OnTouch _onTouch;

  PageWidget(this._onTouch, this._page) : super(key: ObjectKey(_page));

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _page.buttons
          .map((rows) =>
              rows.map((cell) => ButtonWidget(cell, _onTouch)).toList())
          .map((cells) => Flexible(
                flex: 10,
                child: Row(children: cells),
              ))
          .toList(),
    );
  }
}
