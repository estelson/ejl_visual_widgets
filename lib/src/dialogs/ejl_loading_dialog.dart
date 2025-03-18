import 'package:ejl_visual_widgets/src/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import "package:flutter/material.dart";

/// Widget to display a loading dialog.
class EJLLoadingDialog extends StatelessWidget {
  /// Text to display on the body of dialog.
  final String? messageText;

  /// Constructor of the [EJLLoadingDialog].
  const EJLLoadingDialog({super.key, this.messageText});

  /// Builds the [EJLLoadingDialog].
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      maintainBottomViewPadding: true,
      child: Dialog(
        elevation: 3,
        shadowColor: Colors.grey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white,
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                      color: Colors.blue,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: EJLText(
                        text: messageText ?? "",
                        overflow: TextOverflow.ellipsis,
                        // fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                EJLElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  height: 40,
                  width: 100,
                  labelText: "Close",
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
