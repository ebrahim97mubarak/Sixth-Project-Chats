// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatContenarWidget extends StatelessWidget {
  ChatContenarWidget({
    super.key,
    required this.leftMargin,
    required this.rightMargin,
    required this.bouttomLefteRadius,
    required this.bouttomRighteRadius,
    required this.backGroundContenarColor,
    required this.text,
    required this.alignment,
  });
  double rightMargin, leftMargin, bouttomRighteRadius, bouttomLefteRadius;
  Color backGroundContenarColor;
  String text;
  Alignment alignment;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: EdgeInsets.only(
        right: rightMargin,
        left: leftMargin,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(bouttomRighteRadius),
          topLeft: const Radius.circular(32),
          topRight: const Radius.circular(32),
          bottomLeft: Radius.circular(bouttomLefteRadius),
        ),
        color: backGroundContenarColor,
      ),
      alignment: alignment,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
