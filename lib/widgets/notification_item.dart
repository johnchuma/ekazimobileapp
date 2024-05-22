import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

Widget notificationItem({bool isRead = false, title}) {
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
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paragraph(
                      text: title ??
                          "Laborum duis duis ipsum veniam. Ullamco proident ea voluptate nisi sint veniam occaecat consectetur. Consequat pariatur sit do sunt cillum labore eu nulla velit elit elit reprehenderit. Tempor sunt aliquip culpa veniam ipsum velit officia magna anim proident in voluptate. Velit ut ullamco aute elit sit commodo excepteur laborum tempor sit consequat eu occaecat duis. Cillum officia adipisicing mollit ex incididunt laboris eu pariatur fugiat exercitation ut.",
                      maxLines: 2,
                      fontWeight: isRead ? null : FontWeight.bold),
                  mutedText(
                      text: "2 min ago",
                      maxLines: 2,
                      fontWeight: isRead ? null : FontWeight.bold)
                ],
              )),
              const SizedBox(
                width: 10,
              ),
              isRead?Container():ClipOval(child: Container(height: 10,width: 10,color: Colors.green))
            ],
          ),
        ),
      ),
    ),
  );
}
