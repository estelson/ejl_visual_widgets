import 'package:flutter/material.dart';

class EJLPasswordValidationMarkers extends StatelessWidget {
  /// Whether the password contains at least one uppercase letter.
  final bool containsUpperCase;

  /// Whether the password contains at least one lowercase letter.
  final bool containsLowerCase;

  /// Whether the password contains at least one number.
  final bool containsNumber;

  /// Whether the password contains at least one special character.
  final bool containsSpecialChar;

  /// Whether the password contains at least 8 characters.
  final bool contains8Length;

  const EJLPasswordValidationMarkers({
    super.key,
    required this.containsUpperCase,
    required this.containsLowerCase,
    required this.containsNumber,
    required this.containsSpecialChar,
    required this.contains8Length,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(10)), border: Border.all(color: Colors.grey.shade300), color: Colors.grey.shade100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(containsUpperCase ? "\u{2713}  1 uppercase" : "\u{2717}  1 uppercase", style: TextStyle(color: containsUpperCase ? Colors.green : Colors.red)),
              Text(containsLowerCase ? "\u{2713}  1 lowercase" : "\u{2717}  1 lowercase", style: TextStyle(color: containsLowerCase ? Colors.green : Colors.red)),
              Text(containsNumber ? "\u{2713}  1 number" : "\u{2717}  1 number", style: TextStyle(color: containsNumber ? Colors.green : Colors.red)),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(containsSpecialChar ? "\u{2713}  1 special character" : "\u{2717}  1 special character", style: TextStyle(color: containsSpecialChar ? Colors.green : Colors.red)),
              Text(contains8Length ? "\u{2713}  8 minimum characters" : "\u{2717}  8 minimum characters", style: TextStyle(color: contains8Length ? Colors.green : Colors.red)),
            ],
          ),
        ],
      ),
    );
  }
}
