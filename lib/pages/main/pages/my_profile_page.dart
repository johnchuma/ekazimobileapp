import 'package:ekazi/pages/main/pages/profile_items/archivements_and_careers.dart';
import 'package:ekazi/pages/main/pages/profile_items/brief_careers.dart';
import 'package:ekazi/pages/main/pages/profile_items/education_background.dart';
import 'package:ekazi/pages/main/pages/profile_items/languages.dart';
import 'package:ekazi/pages/main/pages/profile_items/primary_details.dart';
import 'package:ekazi/pages/main/pages/profile_items/proficiency_qualifications.dart';
import 'package:ekazi/pages/main/pages/profile_items/refrees.dart';
import 'package:ekazi/pages/main/pages/profile_items/skills.dart';
import 'package:ekazi/pages/main/pages/profile_items/trainings_and_workshops.dart';
import 'package:ekazi/pages/main/pages/profile_items/work_experiences.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar(title: "My Profile"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: decoration(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 10),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                heading2(text: "Profile Completion"),
                                mutedText(text: "Your profile is 65% completed")
                              ]),
                          ClipOval(
                            child: Container(
                              color: primaryColor.withOpacity(0.1),
                              height: 50,
                              width: 50,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(
                                    child: paragraph(
                                        text: "28%", color: primaryColor)),
                              ),
                            ),
                          )
                        ]),
                  )),
              SizedBox(
                height: 10,
              ),
              PrimaryDetails(),
              SizedBox(
                height: 10,
              ),
              EducationBackground(),
              SizedBox(
                height: 10,
              ),
              BriefCareer(),
              SizedBox(
                height: 10,
              ),
              ArchivementsAndCareer(),
              SizedBox(
                height: 10,
              ),
              WorkExperiences(),
              SizedBox(
                height: 10,
              ),
              Skills(),
              SizedBox(
                height: 10,
              ),
              Refrees(),
              SizedBox(
                height: 10,
              ),
              Languages(),
              SizedBox(
                height: 10,
              ),
              ProficiencyQualifications(),
              SizedBox(
                height: 10,
              ),
              TrainingsAndWorkshops(),
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
