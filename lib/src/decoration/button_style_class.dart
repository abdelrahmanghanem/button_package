import 'dart:math';

import 'package:flutter/material.dart';

class ButtonStyleClass extends ButtonStyle {
  final double width;
  final double maxWidth;
  final double height;
  final double radius;
  final double? opacity;
  // final Color labelColor;
  final Color borderColor;
  final Color disableColor;
  final Color background;
  final BuildContext context;
  final bool smallSize;
  final EdgeInsets contentPadding;

  const ButtonStyleClass({
    required this.width,
    required this.maxWidth,
    required this.height,
    required this.radius,
    // required this.labelColor,
    required this.borderColor,
    required this.background,
    required this.context,
    required this.disableColor,
    required this.smallSize,
    required this.opacity,
    required this.contentPadding,
  });

  ButtonStyle get apply {
    return ButtonStyle(
      elevation: WidgetStateProperty.all<double?>(0),
      padding: WidgetStateProperty.all(contentPadding),
      minimumSize: WidgetStateProperty.all<Size>(
        Size(smallSize ? 60 : min(width, maxWidth), height),
      ),
      maximumSize: WidgetStateProperty.all<Size>(
        Size(maxWidth, height),
      ),
      backgroundColor: WidgetStateProperty.resolveWith<Color>(
        (Set<WidgetState> states) =>
            states.contains(WidgetState.disabled) ? disableColor : background,
      ),
      // foregroundColor: WidgetStateProperty.resolveWith<Color>(
      //   (Set<WidgetState> states) =>
      //       states.contains(WidgetState.disabled) ? Colors.red : labelColor,
      // ),
      side: WidgetStateProperty.resolveWith<BorderSide>(
        (Set<WidgetState> states) => states.contains(WidgetState.disabled)
            ? BorderSide(color: disableColor, width: 0.5)
            : BorderSide(color: borderColor, width: 0.5),
      ),
      shape: WidgetStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
    );
  }
}
