import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:icons_plus/icons_plus.dart';

successNotification(message) {
  Get.snackbar("", "",
      duration: const Duration(seconds: 2),
      backgroundColor: backgroundColor,
      padding: const EdgeInsets.all(20),
      messageText: Container(),
      icon: const SizedBox(
        height: 30,
        child: Icon(
          OctIcons.check,
          color: Colors.green,
        ),
      ),
      titleText: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: heading2(text: message, fontSize: 14),
      ));
}

failureNotification(message) {
  Get.snackbar("", "",
      backgroundColor: backgroundColor,
      duration: const Duration(seconds: 2),
      padding: const EdgeInsets.all(20),
      messageText: Container(),
      icon: const SizedBox(
        height: 30,
        child: Icon(
          IonIcons.close,
          color: Colors.red,
        ),
      ),
      titleText: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: heading2(text: message, fontSize: 14),
      ));
}
