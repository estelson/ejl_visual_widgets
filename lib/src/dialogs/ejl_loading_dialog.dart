import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import "package:flutter/material.dart";

/// Widget to display a loading dialog.
class LoadingDialog extends StatelessWidget {
  /// Text to display on the body of dialog.
  final String messageText;

  /// Constructor of the [LoadingDialog].
  const LoadingDialog({super.key, required this.messageText});

  /// Builds the [LoadingDialog].
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Dialog(
        elevation: 3,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white,
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(width: 5),
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  color: Colors.blue,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: EJLText(
                    fontWeight: FontWeight.bold,
                    text: messageText,
                    overflow: TextOverflow.ellipsis,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
