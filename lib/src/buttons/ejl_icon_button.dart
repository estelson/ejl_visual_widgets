import 'package:flutter/material.dart';

class EJLIconButton extends StatelessWidget {
  /// Function to execute when the button is pressed.
  ///
  /// If no value is assigned or the value is null, the button will be disabled.
  final VoidCallback? onPressed;

  /// Icon to display on the button.
  final IconData icon;

  /// Color of the icon.
  final Color? iconColor;

  /// Size of the icon.
  final double? iconSize;

  /// Padding of the button.
  final EdgeInsetsGeometry? padding;

  const EJLIconButton({super.key, this.onPressed, required this.icon, this.iconColor, this.iconSize, this.padding});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, iconSize: iconSize, style: TextButton.styleFrom(iconColor: iconColor ?? Colors.blue), icon: Icon(icon), padding: padding);
  }
}
