import 'package:ekazi/utils/colors.dart';
import 'package:flutter/material.dart';

Widget customButton(
    {var text,
    onClick,
    color,
    double? height,
    bool loading = false,
    Color? textColor}) {
  return GestureDetector(
    onTap: onClick ?? () {},
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        color: color ?? primaryColor,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
          child: Center(
              child: loading
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    )
                  : Text(
                      text ?? "",
                      style: TextStyle(
                          color: textColor ?? Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
        ),
      ),
    ),
  );
}
