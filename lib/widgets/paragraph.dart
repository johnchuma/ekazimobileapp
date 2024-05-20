import 'package:ekazi/utils/colors.dart';
import 'package:flutter/material.dart';

Widget paragraph(
    {var text,
    color,
    double? fontSize,
    int? maxLines,
    TextDecoration? textDecoration}) {
  return Text(text,
      maxLines: maxLines ?? 50,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: color ?? textColor,
          decoration: textDecoration ?? TextDecoration.none,
          fontWeight: FontWeight.w500,
          fontSize: fontSize ?? 16));
}
