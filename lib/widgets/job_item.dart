import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget jobItem({image, title}) {
  return GestureDetector(
    onTap: () {
      Get.to(() => JobDetailsPage());
    },
    child: Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: decoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Row(
            children: [
              SizedBox(
                      height: 30,
                      child: CachedNetworkImage(imageUrl: image)),
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
