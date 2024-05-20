import 'package:flutter/material.dart';

import '../utils/colors.dart';
import 'heading2_text.dart';

Widget pill(
    {bool active = false,
    String? text,
    FontWeight? fontWeight,
    onClick,
    background,
    contentColor}) {
  return GestureDetector(
    onTap: onClick ?? () {},
    child: Padding(
      padding: const EdgeInsets.only(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          color: active
              ? primaryColor
              : background ?? Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: heading2(
                text: text,
                fontWeight: fontWeight ?? FontWeight.bold,
                color: active ? Colors.white : contentColor ?? textColor,
                fontSize: 13),
          ),
        ),
      ),
    ),
  );
}
