import 'package:flutter/material.dart';

/// Derivation of the [TextFormField] widget simplifying its use
class EJLTextFormField extends StatelessWidget {
  /// Controller to get and set the text.
  final TextEditingController? controller;

  /// Text to display on the label.
  final String? labelText;

  /// Style of the label.
  final TextStyle? labelStyle;

  /// Text to display on the hint.
  final String? hintText;

  /// Style of the hint.
  final TextStyle? hintStyle;

  /// Maximum number of lines.
  final int? maxLines;

  /// Minimum number of lines.
  final int? minLines;

  /// Maximum number of characters.
  final int? maxLength;

  /// Text to display on the error.
  final String? errorMessage;

  /// The type of information for which to optimize the text input control.
  ///
  /// On Android, behavior may vary across device and keyboard provider.
  ///
  /// This class stays as close to `Enum` interface as possible, and allows
  /// for additional flags for some input types. For example, numeric input
  /// can specify whether it supports decimal numbers and/or signed numbers.
  final TextInputType? keyboardType;

  /// Icon to display on the left side of the text field.
  final Widget? prefixIcon;

  /// Icon to display on the right side of the text field.
  final Widget? suffixIcon;

  /// Whether to obscure the text.
  ///
  /// Mainly used in password fields
  ///
  /// default value is [false].
  final bool? isObscureText;

  /// Validator to validate the input.
  final FormFieldValidator<String?>? validator;

  /// Callback to call when the text changes.
  final ValueChanged<String>? onChanged;

  /// Color of the border.
  final Color? borderColor;

  /// Color of the background.
  final Color? fillColor;

  /// If true, the field will be filled.
  final bool? filled;

  /// If true, the field will be dense, reducing its height.
  final bool? isDense;

  /// If false, the field will be disabled.
  ///
  /// default value is [true].
  final bool? isEnabled;

  /// Constructor of the [EJLTextFormField].
  const EJLTextFormField({
    super.key,
    this.controller,
    this.labelText,
    this.labelStyle,
    this.hintText,
    this.hintStyle,
    this.maxLines,
    this.minLines,
    this.maxLength,
    this.errorMessage,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.isObscureText = false,
    this.validator,
    this.onChanged,
    this.borderColor,
    this.fillColor,
    this.filled,
    this.isDense,
    this.isEnabled,
  });

  /// Builds the [EJLTextFormField].
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      obscureText: isObscureText ?? false,
      keyboardType: keyboardType,
      onChanged: onChanged,
      maxLines:
          maxLines != null && maxLines! > 0 && isObscureText == false
              ? maxLines
              : 1,
      minLines: minLines != null && minLines! > 0 ? minLines : null,
      maxLength: maxLength != null && maxLength! > 0 ? maxLength : null,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
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
          borderSide: BorderSide(color: Colors.grey.shade600),
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
        labelStyle: labelStyle,
        hintText: hintText,
        hintStyle: hintStyle,
        fillColor: fillColor ?? Colors.white,
        filled: filled ?? true,
        isDense: isDense ?? false,
        enabled: isEnabled ?? true,
        errorText: errorMessage,
      ),
    );
  }
}
