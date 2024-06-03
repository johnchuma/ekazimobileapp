import 'package:ekazi/controllers/jobs_controller.dart';
import 'package:ekazi/pages/main/pages/job_details_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/format_date.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget jobItem(item) {
  JobsController jobsController = Get.find();
  return GestureDetector(
    onTap: () {
      jobsController.selectedJob = item;
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
              const SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  paragraph(text: item["job_position"]["position_name"]),
                  mutedText(
                      text:
                           item["client"]==null?"":item["client"]["client_name"],
                      maxLines: 2)
                ],
              )),
              const SizedBox(
                width: 10,
              ),
              mutedText(text: timeAgo(DateTime.parse(item["created_at"])))
            ],
          ),
        ),
      ),
    ),
  );
}
