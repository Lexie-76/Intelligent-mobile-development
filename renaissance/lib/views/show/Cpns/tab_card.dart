import 'dart:ui';

import 'package:flutter/material.dart';

class CardSection {
  CardSection({this.title, this.leftColor, this.rightColor, this.contentWidget});

  final String title;
  final Color leftColor;
  final Color rightColor;
  final Widget contentWidget;

  @override
  bool operator ==(Object other) {
    if (other is! CardSection) return false;
    final CardSection otherSection = other;
    return title == otherSection.title;
  }

  @override
  int get hashCode => title.hashCode;
}
