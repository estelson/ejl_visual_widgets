import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

class EJLElevatedButton extends StatelessWidget {
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
  ///
  /// If not set, the default color will be [Colors.white].
  final Color? textColor;

  /// Color of the background.
  ///
  /// If not set, the default color will be [Colors.blue].
  final Color? backgroundColor;

  /// Font size of the [labelText].
  ///
  /// If not set, the default font size will be used.
  final double? fontSize;

  /// Letter spacing of the [labelText].
  ///
  /// If not set, the default letter spacing will be used.
  final double? letterSpacing;

  /// Font weight of the text.
  ///
  /// If not set, the default font weight will be used.
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

  const EJLElevatedButton({
    super.key,
    required this.onPressed,
    this.labelText,
    this.children,
    this.textColor,
    this.backgroundColor,
    this.fontSize,
    this.letterSpacing,
    this.fontWeight,
    this.elevation,
    this.borderRadius,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width!, height!),
        backgroundColor: backgroundColor ?? Colors.blue,
        foregroundColor: textColor ?? Colors.white,
        shadowColor: Colors.grey,
        textStyle: TextStyle(fontSize: fontSize!, letterSpacing: letterSpacing!, fontWeight: fontWeight!),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        elevation: elevation ?? 3,
      ),

      /// If [labelText] is not set, the [children] will be displayed.
      child: labelText != null ? EJLText(text: labelText!) : Row(mainAxisAlignment: MainAxisAlignment.center, children: children!),
    );
  }
}
