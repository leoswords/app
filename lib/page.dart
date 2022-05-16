import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leoswords/button.dart';

import 'models/speech_bar.dart';

class Page {
  final String name;
  final List<List<Button>> buttons;

  const Page(this.name, this.buttons);
}

class PageWidget extends ConsumerWidget {
  final Page _page;

  PageWidget(this._page) : super(key: ObjectKey(_page));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var rows = _page.buttons
        .map((buttons) => buttons
            .map((button) => Expanded(
                child: GestureDetector(
                    onTap: () =>
                        ref.read(barProvider.notifier).add(button.message),
                    child: ButtonWidget(button))))
            .toList())
        .map((buttons) => Expanded(child: Row(children: buttons)))
        .toList();
    return Column(children: rows);
  }
}
