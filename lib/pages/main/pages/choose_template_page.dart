import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/pages/main/pages/cv_preview_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ChooseTemplatePage extends StatelessWidget {
  const ChooseTemplatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "Choose Template"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: [
                  "https://techguruplus.com/wp-content/uploads/2022/12/Resume-CV-Templates-Word-doc-023.jpg",
                  "https://d.novoresume.com/images/doc/skill-based-cv-template.png",
                  "https://cdn.enhancv.com/single_column_resume_template_1_c1e24e6e04.png"
                ]
                    .map((item) => Container(
                          decoration: decoration(),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl: item,
                            ),
                          ),
                        ))
                    .toList(),
              ),
            ),
            customButton(
                text: "Continue",
                onClick: () {
                  Get.to(() => const CvPreviewPage());
                }),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
