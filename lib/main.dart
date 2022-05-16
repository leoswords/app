import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:leoswords/app.dart';

void main() {
  runApp(MaterialApp(
      title: 'Leo\'s words',
      theme: ThemeData.dark(),
      home: const Scaffold(
        body: ProviderScope(
          child: App(),
        ),
      )));
}
