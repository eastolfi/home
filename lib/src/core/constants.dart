// ignore_for_file: non_constant_identifier_names

import 'package:flutter/widgets.dart';

class Constants extends InheritedWidget {
  static Constants? of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<Constants>();

  const Constants({super.key, required super.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) => false;


  final String APP_NAME = 'Health';
}