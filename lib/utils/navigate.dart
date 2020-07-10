import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(BuildContext context, Widget widget) {
  Navigator.of(context).push(
    CupertinoPageRoute(
      builder: (_) => widget,
    ),
  );
}
