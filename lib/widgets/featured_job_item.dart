import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/utils/format_date.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/pill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:html/parser.dart';

Widget featuredJobItem(item) {
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
                    // SizedBox(
                    //   height: 30,
                    //   child: CachedNetworkImage(imageUrl: "$imageBaseUrl/${item["client"]["logo"]}")),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        paragraph(text: item["job_position"]["position_name"],maxLines: 1),
                        mutedText(
                            text:item["client"]["client_name"], maxLines: 2)
                      ],
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    pill(
                      background: primaryColor.withOpacity(0.1),
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
                    pill(text:timeAgo(DateTime.parse(item["created_at"])), fontWeight: FontWeight.w400),
                    pill(text: "2 positions", fontWeight: FontWeight.w400),
                    pill(text: "30 views", fontWeight: FontWeight.w400),
                    pill(text: "4 applicants", fontWeight: FontWeight.w400),


                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                paragraph(
                    maxLines: 2,
                    text:
                        parseFragment(item["job_duties"]["main_duties"]).text)
              ],
            ),
          ),
        ),
      ),
    );
  });
}
