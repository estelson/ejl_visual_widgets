import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

/// Derivation of the [TextButton] widget ith a custom icon simplifying its use
class EJLTextButtonIcon extends StatelessWidget {
  /// Function to execute when the button is pressed.
  ///
  /// If no value is assigned or the value is null, the button will be disabled.
  ///
  /// [required]
  final VoidCallback onPressed;

  /// Text to display on the button.
  ///
  /// [required]
  final String labelText;

  /// Color of the [labelText].
  ///
  /// If not set, the default color will be [Colors.blue].
  final Color? textColor;

  /// Icon to display on the button.
  ///
  /// [required]
  final IconData icon;

  /// Color of the [icon].
  ///
  /// If not set, the default color will be [Colors.blue].
  final Color? iconColor;

  /// Font size of the [labelText].
  ///
  /// If not set, the default font size will be used.
  final double? fontSize;

  /// Font style of the [labelText].
  ///
  /// If not set, the default font style will be used.
  final FontStyle? fontStyle;

  /// Letter spacing of the [labelText].
  ///
  /// If not set, the default letter spacing will be used.
  final double? letterSpacing;

  /// Font weight of the text.
  final FontWeight? fontWeight;

  /// Border radius of the button.
  ///
  /// If not set, the default border radius will be `10`.
  final double? borderRadius;

  /// Constructor of the [EJLTextButtonIcon].
  const EJLTextButtonIcon({
    super.key,
    required this.onPressed,
    required this.labelText,
    this.textColor,
    this.iconColor,
    required this.icon,
    this.fontSize,
    this.fontStyle,
    this.letterSpacing,
    this.fontWeight,
    this.borderRadius,
  });

  /// Builds the [EJLTextButtonIcon].
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: textColor ?? Colors.blue,
        textStyle: TextStyle(
          fontSize: fontSize ?? 14,
          letterSpacing: letterSpacing ?? 1,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
      ),
      icon: Icon(icon),
      label: EJLText(text: labelText),
    );
  }
}
