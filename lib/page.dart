import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leoswords/bar.dart';
import 'package:leoswords/button.dart';
import 'package:provider/provider.dart';

class Page {
  final String name;
  final List<List<Button>> buttons;

  const Page(this.name, this.buttons);
}

class PageWidget extends StatelessWidget {
  final Page _page;

  PageWidget(this._page) : super(key: ObjectKey(_page));

  @override
  Widget build(BuildContext context) {
    var rows = _page.buttons
        .map((buttons) => buttons
            .map((button) => Expanded(
                child: GestureDetector(
                    onTap: () => Provider.of<BarModel>(context, listen: false)
                        .add(button.message),
                    child: ButtonWidget(button))))
            .toList())
        .map((buttons) => Expanded(child: Row(children: buttons)))
        .toList();
    return Column(children: rows);
  }
}
