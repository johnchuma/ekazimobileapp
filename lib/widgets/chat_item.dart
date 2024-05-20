import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget chatItem({image, title}) {
  return GestureDetector(
    onTap: () {},
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: decoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              avatar(
                  size: 40,
                  image: image ??
                      "https://upload.wikimedia.org/wikipedia/commons/6/6f/HP_logo_630x630.png"),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paragraph(text: title ?? "Full stack developer"),
                  mutedText(
                      text:
                          "Est nostrud exercitation laborum sint proident ex aliquip ipsum minim .",
                      maxLines: 2)
                ],
              )),
              SizedBox(
                width: 10,
              ),
              mutedText(text: "2 min ago")
            ],
          ),
        ),
      ),
    ),
  );
}
