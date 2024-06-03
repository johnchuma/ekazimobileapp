import 'package:ekazi/pages/main/pages/choose_template_page.dart';
import 'package:ekazi/pages/main/pages/my_profile_page.dart';
import 'package:ekazi/pages/main/pages/privacy_page.dart';
import 'package:ekazi/pages/main/pages/saved_cv_page.dart';
import 'package:ekazi/pages/main/pages/upgrade_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/avatar.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
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
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 10,
              ),
              avatar(size: 120,image: "https://img.freepik.com/free-photo/side-view-ofserious-man_23-2148946213.jpg"),
              const SizedBox(
                height: 10,
              ),
              heading2(text: "Kelvin Cosmas Mushi"),
              mutedText(text: "johnvchuma@gmail.com"),
              const SizedBox(
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
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "My Profile")
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const SavedCvPage());
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
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "My Saved CV's")
                        ],
                      ),
                    )),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const ChooseTemplatePage());
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
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "Generate CV")
                        ],
                      ),
                    )),
              ),
                const SizedBox(
                height: 5,
              ),
                   GestureDetector(
                onTap: () {
                  Get.to(() => const PrivacyPage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock,
                            color: mutedColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "Set Privacy")
                        ],
                      ),
                    )),
              ),
                const SizedBox(
                height: 5,
              ),
                   GestureDetector(
                onTap: () {
                  // Get.to(() => ChooseTemplatePage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.edit_document,
                            color: mutedColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "Consent Form")
                        ],
                      ),
                    )),
              ),
                const SizedBox(
                height: 5,
              ),
                   GestureDetector(
                onTap: () {
                  // Get.to(() => ChooseTemplatePage());
                },
                child: Container(
                    decoration: decoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 15, horizontal: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.settings,
                            color: mutedColor,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          paragraph(text: "Settings")
                        ],
                      ),
                    )),
              ),
              const SizedBox(
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
