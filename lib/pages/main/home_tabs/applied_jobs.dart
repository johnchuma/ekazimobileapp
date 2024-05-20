import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appliedJobItem.dart';
import 'package:ekazi/widgets/job_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppliedJobs extends StatelessWidget {
  const AppliedJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            appliedJobItem(
                image:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/1200px-HP_logo_2012.svg.png"),
            appliedJobItem(
                title: "Frontend Engineer",
                image: "https://www.facebook.com/images/fb_icon_325x325.png"),
            appliedJobItem(
                title: "Frontend Engineer",
                image:
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Opera_2015_icon.svg/1200px-Opera_2015_icon.svg.png"),
          ],
        ),
      ),
    );
  }
}
