import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ejl_visual_widgets/src/buttons/ejl_elevated_button.dart';
import 'package:ejl_visual_widgets/src/others/ejl_text.dart';
import 'package:flutter/material.dart';

/// Widget to display a customized dialog, using and based on AwesomeDialog package
/// [https://pub.dev/packages/awesome_dialog].
void showEJLAlertDialog({
  /// The context in which the widget is inserted
  ///
  /// [required]
  required BuildContext context,

  /// Text to display on the body of dialog.
  ///
  /// [required]
  required String messageText,

  /// Text to display on the ok button.
  ///
  /// [required]
  required String btnOkText,

  /// Function to execute when the ok button is pressed.
  ///
  /// [required]
  required VoidCallback onOkPressed,

  /// Text to display on the dialog title.
  String? titleText,

  /// Text to display on the cancel button.
  ///
  /// If no value is assigned or the value is null, the button will not be displayed.
  String? btnCancelText,

  /// Function to execute when the cancel button is pressed.
  VoidCallback? onCancelPressed,

  /// Show close icon on the dialog.
  ///
  /// default: [false]
  bool? showCloseIcon,

  /// Dialog type can be
  /// [DialogType.info]
  /// [DialogType.question]
  /// [DialogType.warning]
  /// [DialogType.error]
  /// [DialogType.success]
  /// [DialogType.noHeader]
  ///
  /// default: [DialogType.info]
  DialogType? dialogType,

  /// If true, the dialog will be dismissed when the user taps outside of it.
  ///
  /// default: [false]
  bool? dismissOnTouchOutside,

  /// If true, the dialog will be dismissed when the user presses the back button.
  ///
  /// default: [false]
  bool? dismissOnBackKeyPress,
}) {
  /// Builds the [ejlAlertDialog].
  AwesomeDialog(
    isDense: true,
    context: context,
    dialogType: dialogType ?? DialogType.info,
    title: titleText ?? "",
    desc: messageText,
    descTextStyle: TextStyle(
      fontSize: 16,
      color: Colors.grey[800],
    ),
    width: MediaQuery.of(context).size.width * 0.80,
    btnCancel: onCancelPressed != null
        ? EJLElevatedButton(
            onPressed: onCancelPressed,
            backgroundColor: Colors.red,
            children: [
              EJLText(
                text: btnCancelText ?? "",
                fontWeight: FontWeight.bold,
                textColor: Colors.white,
                fontSize: 16,
              ),
            ],
          )
        : null,
    btnOk: EJLElevatedButton(
      onPressed: onOkPressed,
      children: [
        EJLText(
          text: btnOkText,
          fontWeight: FontWeight.bold,
          textColor: Colors.white,
          fontSize: 16,
        ),
      ],
    ),
    dismissOnTouchOutside: dismissOnTouchOutside ?? false,
    dismissOnBackKeyPress: dismissOnBackKeyPress ?? false,
    showCloseIcon: showCloseIcon ?? false,
  ).show();
}

/// Dismiss the dialog.
void dismissEJLAlertDialog({
  /// The context in which the widget is inserted
  ///
  /// [required]
  required BuildContext context,
}) {
  Navigator.pop(context);
}
