import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:flutter/material.dart';

Widget searchForm({text}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Container(
        decoration: decoration(),
        child: TextFormField(
            cursorColor: primaryColor,
            decoration: InputDecoration(
                focusColor: primaryColor,
                prefixIcon: const Icon(Icons.search),
                fillColor: primaryColor,
                prefixIconColor: Colors.black45,
                hintStyle: TextStyle(fontSize: 13),
                border: InputBorder.none,
                hintText: text ?? ""))),
  );
}
