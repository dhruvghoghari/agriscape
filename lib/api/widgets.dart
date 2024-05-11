import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

Future? apiDialog(String? msg)
{
  return Get.dialog(
    CupertinoAlertDialog(
      title: Text(msg!),
      actions: [
        CupertinoActionSheetAction(
          child: Text('Ok'),
          onPressed: () {
            Get.back();
          },
        ),
      ],
    )
  );
}