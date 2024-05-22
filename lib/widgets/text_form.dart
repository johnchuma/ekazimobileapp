// ignore_for_file: non_constant_identifier_names
import 'package:ekazi/utils/box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:ekazi/utils/colors.dart';

Widget TextForm(
    {hint,
    key,
    TextEditingController? textEditingController,
    initialValue,
    double? radius,
    TextInputType? textInputType,
    color,
    onChanged,
    validator,
    isPassword = false,
    int? lines,
    suffixIcon}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(radius ?? 15),
      child: Container(
          decoration: decoration(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: TextFormField(
              obscureText: isPassword,
              initialValue: initialValue,
              cursorColor: primaryColor,
              onChanged: onChanged ?? (value) {},
              keyboardType: textInputType ?? TextInputType.text,
              style: TextStyle(color: textColor),
              maxLines: lines ?? 1,
              
              validator: validator ??
                  (value) {
                    if (value == "") {
                      return "Field required";
                    }
                    return null;
                  },
              controller: textEditingController,
              decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 15, color: mutedColor),
                  suffixIcon: suffixIcon ??
                      Container(
                        width: 0,
                      ),
                  border: InputBorder.none,
                  
                  hintText: hint),
            ),
          )),
    ),
  );
}
