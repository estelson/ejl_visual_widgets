import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

class EJLOutlinedButtonIcon extends StatelessWidget {
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
  final Widget icon;

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

  /// Font weight of the [labelText].
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

  const EJLOutlinedButtonIcon({
    super.key,
    required this.onPressed,
    this.labelText,
    required this.icon,
    this.iconAlignment,
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

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: BorderSide(width: 1.5, color: borderColor ?? Colors.blue),
        minimumSize: Size(width!, height!),
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: textColor ?? Colors.blueGrey,
        shadowColor: Colors.grey,
        textStyle: TextStyle(fontSize: fontSize!, letterSpacing: letterSpacing!, fontWeight: fontWeight!),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius ?? 10)),
        elevation: elevation ?? 3,
      ),
      label: labelText != null ? EJLText(text: labelText!) : Row(mainAxisAlignment: MainAxisAlignment.center, children: children!),
      icon: icon,
    );
  }
}
