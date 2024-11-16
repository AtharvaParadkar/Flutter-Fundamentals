import 'package:flutter/material.dart';

MyNavigation(BuildContext context, Widget navpage) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (_) => navpage),
  );
}
