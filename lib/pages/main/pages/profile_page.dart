import 'package:ekazi/pages/main/pages/choose_template_page.dart';
import 'package:ekazi/pages/main/pages/my_profile_page.dart';
import 'package:ekazi/pages/main/pages/saved_cv_page.dart';
import 'package:ekazi/pages/main/pages/upgrade_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        title: heading(text: "Profile"),
      ),
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10,
              ),
              avatar(size: 120),
              SizedBox(
                height: 10,
              ),
              heading2(text: "Kelvin Cosmas Mushi"),
              mutedText(text: "johnvchuma@gmail.com"),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [mutedText(text: "Menu")],
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const MyProfilePage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: mutedColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "My Profile")
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => SavedCvPage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.save,
                            color: mutedColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "My Saved CV's")
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => ChooseTemplatePage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.download,
                            color: mutedColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "Generate CV")
                        ],
                      ),
                    )),
              ),
              SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const UpgradePage());
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      color: secondaryColor.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            paragraph(
                                text: "Upgrade to Premium",
                                color: secondaryColor),
                            Icon(
                              Icons.arrow_forward,
                              color: secondaryColor,
                            )
                          ],
                        ),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
