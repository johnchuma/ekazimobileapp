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
                          "Est nostrud exercitation laborum sint proident ex aliquip ipsum minim",
                      maxLines: 2),
                  mutedText(text: "2 min ago", maxLines: 2)
                ],
              )),
              SizedBox(
                width: 10,
              ),
              isRead
                  ? Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 10,
                            height: 10,
                            color: borderColor,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mutedText(text: "Read"),
                      ],
                    )
                  : Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 10,
                            height: 10,
                            color: Colors.green,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        mutedText(text: "Unread"),
                      ],
                    )
            ],
          ),
        ),
      ),
    ),
  );
}
