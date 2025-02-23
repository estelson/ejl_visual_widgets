import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:ejl_visual_widgets/ejl_visual_widgets.dart';
import 'package:flutter/material.dart';

/// Widget to display a customized dialog, using and based on AwesomeDialog package
/// [https://pub.dev/packages/awesome_dialog].
void ejlAlertDialog({
  /// The context in which the widget is inserted
  ///
  /// [required]
  required BuildContext context,

  /// Text to display on the body of dialog.
  required String messageText,

  /// Text to display on the [okButton].
  required String btnOkText,

  /// Function to execute when the button is pressed.
  ///
  /// [required]
  required VoidCallback onOkPressed,

  /// Text to display on the dialog title.
  String? titleText,

  /// Text to display on the [cancelButton].
  ///
  /// If no value is assigned or the value is null, the button will not be displayed.
  String? btnCancelText,

  /// Function to execute when the [cancelButton] is pressed.
  VoidCallback? onCancelPressed,

  /// Dialog type can be [DialogType.info], [DialogType.warning], [DialogType.error], [DialogType.success], [DialogType.noHeader]
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
  /// Builds the [AwesomeDialog].
  AwesomeDialog(
    isDense: true,
    context: context,
    dialogType: dialogType ?? DialogType.question,
    title: titleText ?? "",
    desc: messageText,
    descTextStyle: TextStyle(fontSize: 16, color: Colors.grey[800]),
    width: MediaQuery.of(context).size.width * 0.80,
    btnCancel:
        onCancelPressed != null
            ? EJLElevatedButton(
              onPressed: onCancelPressed,
              backgroundColor: Colors.red,
              children: [EJLText(text: btnCancelText ?? "")],
            )
            : null,
    btnOk: EJLElevatedButton(
      onPressed: onOkPressed,
      children: [EJLText(text: btnOkText)],
    ),
    dismissOnTouchOutside: dismissOnTouchOutside ?? false,
    dismissOnBackKeyPress: dismissOnBackKeyPress ?? false,
  ).show();
}
