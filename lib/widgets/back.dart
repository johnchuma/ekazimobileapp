import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:get/get.dart';
import 'package:icons_plus/icons_plus.dart';

class Back extends StatelessWidget {
  const Back({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Get.back();
        },
        child: Container(
            color: Colors.transparent,
            child: const Icon(OctIcons.arrow_left, color: Colors.black45)));
  }
}
