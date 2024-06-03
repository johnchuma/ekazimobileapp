// ignore_for_file: non_constant_identifier_names
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:flutter/material.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget selectForm(
    {hint,
    key,
    TextEditingController? textEditingController,
    initialValue,
    TextInputType? textInputType,
    color,
    onChanged,
    label,
    List<DropdownMenuItem<String>>? items,
    validator,
    isPassword = false,
    int? lines,
    suffixIcon}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        mutedText(text: label ?? "Select"),
        const SizedBox(
          height: 5,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
              decoration: decoration(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: DropdownButtonFormField(
                  items: items ?? [],
                  value: textEditingController!.text,
                  onChanged: (value) {
                    textEditingController.text = value.toString();
                    if (onChanged != null) {
                      onChanged();
                    }
                  },
                  style: GoogleFonts.sen(color: textColor),
                  validator: validator ??
                      (value) {
                        if (value == "") {
                          return "Field required";
                        }
                        return null;
                      },
                  decoration: InputDecoration(
                      hintStyle:
                          GoogleFonts.sen(fontSize: 15, color: mutedColor),
                      border: InputBorder.none,
                      hintText: hint),
                ),
              )),
        ),
      ],
    ),
  );
}
