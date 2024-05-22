import 'package:ekazi/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mutedText(
    {var text, color, maxLines, double? fontSize,FontWeight? fontWeight, TextAlign? textAlign}) {
  return Padding(
    padding: const EdgeInsets.only(top: 2),
    child: Text(text.toString(),
        textAlign: textAlign ?? TextAlign.start,
        maxLines: maxLines ?? 50,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.sen(
            color: color ?? mutedColor,
            fontWeight:fontWeight??FontWeight.normal,
            fontSize: fontSize ?? 15)),
  );
}
