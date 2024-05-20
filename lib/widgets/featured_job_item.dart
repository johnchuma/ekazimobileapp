import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/pill.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget featuredJobItem() {
  return Builder(builder: (context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => JobDetailsPage());
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Container(
          decoration: decoration(),
          width: MediaQuery.of(context).size.width - 30,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    avatar(
                        size: 40,
                        image:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDA1JSs-3s1XYt2SfBx6WGOV0L1keDp0Owt7UB_u5q2A&s"),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paragraph(text: "Full stack developer"),
                        mutedText(
                            text: "Smart foundry africa group", maxLines: 2)
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    pill(
                      text: "Apply",
                    )
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Wrap(
                  runAlignment: WrapAlignment.start,
                  spacing: 4,
                  runSpacing: 4,
                  alignment: WrapAlignment.start,
                  direction: Axis.horizontal,
                  children: [
                    pill(text: "Posted 3 min ago", fontWeight: FontWeight.w400),
                    pill(text: "Dar es salaam", fontWeight: FontWeight.w400),
                    pill(text: "2 positions", fontWeight: FontWeight.w400)
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                paragraph(
                    maxLines: 2,
                    text:
                        "Occaecat minim laborum aliquip est commodo do velit labore proident laborum laborum veniam.")
              ],
            ),
          ),
        ),
      ),
    );
  });
}
