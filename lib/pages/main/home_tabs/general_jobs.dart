import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/featured_job_item.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/job_item.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/pill.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GeneralJobs extends StatelessWidget {
  const GeneralJobs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              heading2(text: "Featured Jobs"),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 160,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    featuredJobItem(),
                    featuredJobItem(),
                    featuredJobItem()
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    heading2(text: "All Jobs"),
                    paragraph(
                        text: "See All",
                        color: primaryColor,
                        textDecoration: TextDecoration.underline)
                  ],
                ),
              ),
              jobItem(
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/1200px-HP_logo_2012.svg.png"),
              jobItem(
                  title: "Frontend Engineer",
                  image: "https://www.facebook.com/images/fb_icon_325x325.png"),
              jobItem(
                  title: "Frontend Engineer",
                  image:
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Opera_2015_icon.svg/1200px-Opera_2015_icon.svg.png"),
            ],
          ),
        ),
      ),
    );
  }
}
