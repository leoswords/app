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
    var rows = _page.buttons
        .map((buttons) => buttons
            .map((button) => Expanded(
                child: GestureDetector(
                    onTap: () => _onTouch(button),
                    child: ButtonWidget(button))))
            .toList())
        .map((buttons) => Expanded(child: Row(children: buttons)))
        .toList();
    return Column(children: rows);
  }
}
