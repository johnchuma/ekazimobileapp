// ignore_for_file: unnecessary_import

import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CvPreviewPage extends StatelessWidget {
  const CvPreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "CV  preview"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl:
                  "https://d.novoresume.com/images/doc/skill-based-cv-template.png",
            ),
            const SizedBox(
              height: 20,
            ),
            customButton(text: "Download CV"),
            const SizedBox(
              height: 10,
            ),
            customButton(
                text: "Edit Before Downloading",
                color: secondaryColor.withOpacity(0.1),
                textColor: secondaryColor),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
