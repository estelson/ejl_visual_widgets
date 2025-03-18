import 'package:flutter/material.dart';

/// Derivation of the [DropdownButtonFormField] widget simplifying its use
class EJLDropdownFormField extends StatelessWidget {
  /// List of dropdown items.
  ///
  /// [required]
  final List<DropdownMenuItem<dynamic>> items;

  /// Function to execute when the value is changed.
  final ValueChanged<dynamic>? onChanged;

  /// Widget to display on the left side of the field.
  final Widget? prefixIcon;

  /// Widget to display on the right side of the field.
  final Widget? suffixIcon;

  /// Function to validate the input.
  final String? Function(dynamic)? validator;

  /// Color of the border.
  ///
  /// If not set, the default color will be [Colors.blue].
  final Color? borderColor;

  /// Color of the background.
  final Color? fillColor;

  /// If true, the field will be filled.
  ///
  /// If not set, the default value will be `false`.
  final bool? filled;

  /// If true, the field will be dense.
  ///
  /// If not set, the default value will be `false`.
  final bool? isDense;

  /// Text to display on the label.
  final String? labelText;

  /// Style of the label.
  final TextStyle? labelStyle;

  /// Text to display on the hint.
  final String? hintText;

  /// Style of the hint.
  final TextStyle? hintStyle;

  /// Text to display on the error.
  final String? errorMessage;

  /// Constructor of the [EJLDropdownFormField].
  const EJLDropdownFormField({
    super.key,
    required this.items,
    this.onChanged,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.borderColor,
    this.fillColor,
    this.filled,
    this.isDense,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.errorMessage,
  });

  /// Builds the [EJLDropdownFormField].
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      items: items,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.blueAccent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor ?? Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade800),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText ?? "",
        labelStyle: labelStyle,
        hintText: hintText ?? "",
        hintStyle: hintStyle,
        errorText: errorMessage ?? "",
        fillColor: fillColor,
        filled: filled ?? false,
        isDense: isDense ?? false,
      ),
    );
  }
}
