import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

/// Derivation of the [ElevatedButton] widget with a custom icon simplifying its use
class EJLElevatedButtonIcon extends StatelessWidget {
  /// Function to execute when the button is pressed.
  ///
  /// If no value is assigned or the value is null, the button will be disabled.
  ///
  /// [required]
  final VoidCallback onPressed;

  /// Text to display on the button.
  final String? labelText;

  /// Icon to display on the button.
  ///
  /// [required]
  final IconData icon;

  /// Alignment of the icon.
  ///
  /// The icon is placed at the start of the button.
  ///
  /// Defaults to [IconAlignment.start].
  ///
  /// The effect of `iconAlignment` depends on [TextDirection]. If textDirection is
  /// [TextDirection.ltr] then [IconAlignment.start] and [IconAlignment.end] align the
  /// icon on the left or right respectively.  If textDirection is [TextDirection.rtl] the
  /// the alignments are reversed.
  final IconAlignment? iconAlignment;

  /// List of widgets to display in the button.
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

  /// Font size of the [iconSize].
  ///
  /// If not set, the default font size will be used.
  final double? iconSize;

  /// Letter spacing of the [labelText].
  ///
  /// If not set, the default letter spacing will be used.
  final double? letterSpacing;

  /// Font weight of the [labelText].
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

  /// Constructor of the [EJLElevatedButtonIcon].
  const EJLElevatedButtonIcon({
    super.key,
    required this.onPressed,
    this.labelText,
    required this.icon,
    this.iconAlignment,
    this.children,
    this.textColor,
    this.backgroundColor,
    this.fontSize,
    this.iconSize,
    this.letterSpacing,
    this.fontWeight,
    this.elevation,
    this.borderRadius,
    this.width,
    this.height,
  });

  /// Builds the [EJLElevatedButtonIcon].
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          width ?? MediaQuery.of(context).size.width,
          height ?? 50,
        ),
        backgroundColor: backgroundColor ?? Colors.blue,
        foregroundColor: textColor ?? Colors.white,
        iconAlignment: iconAlignment ?? IconAlignment.start,
        shadowColor: Colors.grey,
        textStyle: TextStyle(letterSpacing: letterSpacing),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 10),
        ),
        elevation: elevation ?? 3,
        iconColor: textColor ?? Colors.white,
        iconSize: iconSize ?? 24,
      ),
      label:
          labelText != null
              ? EJLText(
                text: labelText ?? "",
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight ?? FontWeight.bold,
                textColor: textColor ?? Colors.white,
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: children!,
              ),
      icon: Icon(icon),
    );
  }
}
