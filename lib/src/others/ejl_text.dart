import 'package:flutter/material.dart';

/// Derivation of the [Text] widget. Simplify its use
/// and standardize the visual identity of the widget
class EJLText extends StatelessWidget {
  /// Text to display.
  ///
  /// [required]
  final String text;

  /// Font size of the [text].
  ///
  /// If not set, the default font size will be used.
  final double? fontSize;

  /// Font weight of the text.
  final FontWeight? fontWeight;

  /// Font family of the text.
  final String? fontFamily;

  /// Font style of the text.
  ///
  /// [FontStyle.normal]
  /// [FontStyle.italic]
  ///
  /// If not set, the default [FontStyle.normal] will be used.
  final FontStyle? fontStyle;

  /// Color of the [text].
  final Color? textColor;

  /// Style of the [text].
  final TextStyle? textStyle;

  /// How overflowing [text] should be handled.
  /// Used when text overflows
  ///
  /// Values:
  /// [TextOverflow.clip] - Clip the overflowing text to fix its container.
  /// [TextOverflow.fade] - Fade the overflowing text to transparent.
  /// [TextOverflow.ellipsis] - Use an ellipsis to indicate that the text has overflowed.
  /// [TextOverflow.visible] - Render overflowing text outside of its container.
  final TextOverflow? overflow;

  /// Constructor of the [EJLText].
  const EJLText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.fontFamily,
    this.fontStyle,
    this.textColor,
    this.overflow,
    this.textStyle,
  });

  /// Builds the [EJLText].
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          textStyle ??
          TextStyle(
            fontStyle: fontStyle,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: textColor,
          ),
      overflow: overflow,
    );
  }
}
