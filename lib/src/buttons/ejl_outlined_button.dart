import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

/// Derivation of the [OutlinedButton] widget simplifying its use
class EJLOutlinedButton extends StatelessWidget {
  /// Function to execute when the button is pressed.
  ///
  /// If no value is assigned or the value is null, the button will be disabled.
  ///
  /// [required]
  final VoidCallback onPressed;

  /// Text to display on the button.
  final String? labelText;

  /// List of widgets to display inside the button.
  ///
  /// If not set, only the [labelText] will be displayed.
  ///
  /// In this case, the [labelText] property is [required]
  final List<Widget>? children;

  /// Color of the [labelText].
  final Color? textColor;

  /// Color of the border.
  final Color? borderColor;

  /// Color of the background.
  ///
  /// If not set, the default color will be [Colors.white].
  final Color? backgroundColor;

  /// Font size of the [labelText].
  final double? fontSize;

  /// Letter spacing of the [labelText].
  final double? letterSpacing;

  /// Font weight of the text.
  final FontWeight? fontWeight;

  /// Elevation of the button.
  ///
  /// If not set, the default elevation will be `3`.
  final double? elevation;

  /// Border radius of the button.
  ///
  /// If not set, the default border radius will be `10`.
  final double? borderRadius;

  /// Width of the button.
  final double? width;

  /// Height of the button.
  final double? height;

  /// Constructor of the [EJLOutlinedButton].
  const EJLOutlinedButton({
    super.key,
    required this.onPressed,
    this.labelText,
    this.children,
    this.textColor,
    this.borderColor,
    this.backgroundColor,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.elevation,
    this.borderRadius,
    this.width,
    this.height,
  });

  /// Builds the [EJLOutlinedButton].
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.5, color: borderColor ?? Colors.blue),
        minimumSize: Size(
          width ?? MediaQuery.of(context).size.width,
          height ?? 50,
        ),
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: textColor ?? Colors.blue,
        shadowColor: Colors.grey,
        textStyle: TextStyle(letterSpacing: letterSpacing),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        elevation: elevation ?? 3,
      ),
      child:
          labelText != null
              ? EJLText(
                text: labelText ?? "",
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.bold,
                textColor: textColor ?? Colors.blue,
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children!,
              ),
    );
  }
}
