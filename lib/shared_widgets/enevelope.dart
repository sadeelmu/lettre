import 'package:flutter/material.dart';

Widget envelope() {
  return CustomScrollView(
    primary: false,
    slivers: <Widget>[
      SliverPadding(
        padding: const EdgeInsets.all(20),
        sliver: SliverGrid.count(
          crossAxisCount: 2,
        ),
      ),
    ],
  );
}
