import 'package:flutter/material.dart';

import '../shared/constants.dart';
import 'custom_dialog_box.dart';

class BasicDialog extends StatelessWidget {
  const BasicDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dialogPadding),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: const CustomDialogBox(),
    );
  }
}
