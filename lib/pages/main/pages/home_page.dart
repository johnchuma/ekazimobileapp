import 'package:ekazi/pages/main/home_tabs/applied_jobs.dart';
import 'package:ekazi/pages/main/home_tabs/general_jobs.dart';
import 'package:ekazi/pages/main/home_tabs/matched_jobs.dart';
import 'package:ekazi/pages/main/home_tabs/saved_jobs.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          leading: Container(),
          leadingWidth: 0,
          backgroundColor: backgroundColor,
          title: heading(text: "Home"),
          actions: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: avatar(
                  size: 40,
                  image:
                      "https://img.freepik.com/free-photo/side-view-ofserious-man_23-2148946213.jpg"),
            ),
            const SizedBox(
              width: 15,
            )
          ],
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              labelColor: primaryColor,
              indicatorColor: primaryColor,
              tabs: const [
                Tab(
                  text: "General Jobs",
                ),
                Tab(
                  text: "Matched Jobs (2)",
                ),
                Tab(
                  text: "Applied Jobs (1)",
                ),
                Tab(
                  text: "Saved Jobs (0)",
                ),
              ]),
        ),
        body: const TabBarView(children: [
          GeneralJobs(),
          MatchedJobs(),
          AppliedJobs(),
          SavedJobs()
        ]),
      ),
    );
  }
}
