import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/pages/main/pages/send_application_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/outline_item.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/pill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class JobDetailsPage extends StatelessWidget {
  const JobDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar(title: "Job Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Container(
                decoration: decoration(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                           SizedBox(
                      height: 30,
                      child: CachedNetworkImage(imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDA1JSs-3s1XYt2SfBx6WGOV0L1keDp0Owt7UB_u5q2A&s")),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              paragraph(text: "Full stack developer"),
                              mutedText(
                                  text: "Smart foundry africa group",
                                  maxLines: 2)
                            ],
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Wrap(
                        runAlignment: WrapAlignment.start,
                        spacing: 2,
                        runSpacing: 4,
                        alignment: WrapAlignment.start,
                        direction: Axis.horizontal,
                        children: [
                         pill(text: "3 min ago", fontWeight: FontWeight.w400),
                    pill(text: "2 positions", fontWeight: FontWeight.w400),
                    pill(text: "30 views", fontWeight: FontWeight.w400),
                    pill(text: "4 applicants", fontWeight: FontWeight.w400),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      heading2(text: "Job Requirements"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Education"),
                          paragraph(maxLines: 2, text: "Occaecat minim."),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Job Level"),
                          paragraph(maxLines: 2, text: "Intermediate Level"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Gender"),
                          paragraph(maxLines: 2, text: "Male"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Experience"),
                          paragraph(maxLines: 2, text: "2 Years"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Culture"),
                          paragraph(maxLines: 2, text: "Multiculture"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Personality"),
                          paragraph(maxLines: 2, text: "Intermediate Level"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Languages"),
                          paragraph(maxLines: 2, text: "English, Kiswahili"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Salary"),
                          paragraph(maxLines: 2, text: "Negotiatable"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Job Type"),
                          paragraph(maxLines: 2, text: "Full Time"),
                        ],
                      ),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Location"),
                          paragraph(maxLines: 2, text: "Mikocheni, Dar es salaam"),
                        ],
                      ),
                         Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Deadline"),
                          paragraph(maxLines: 2, text: "20/05/2024"),
                        ],
                      ),
                        
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading2(text: "Job Outline"),
                      outlineItem(
                          text:
                              "Perform effective customer coverage to sell all specifed Unapower/Caterpillar Power."),
                      outlineItem(
                          text: "All specifed Unapower/Caterpillar Power.")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading2(text: "Job Responsibility"),
                      outlineItem(
                          text:
                              "Perform effective customer coverage to sell all specifed Unapower/Caterpillar Power."),
                      outlineItem(
                          text: "All specifed Unapower/Caterpillar Power.")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading2(text: "Job Requirements"),
                      outlineItem(
                          text:
                              "Perform effective customer coverage to sell all specifed Unapower/Caterpillar Power."),
                      outlineItem(
                          text: "All specifed Unapower/Caterpillar Power.")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      heading2(text: "Reporting Structure"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Report to"),
                          paragraph(maxLines: 2, text: "Operational Manager"),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          mutedText(text: "Interact"),
                          paragraph(maxLines: 2, text: "Suppervisor"),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              customButton(
                  text: "Apply",
                  onClick: () {
                    Get.to(() => SendApplicationPage());
                  }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
