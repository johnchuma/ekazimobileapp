import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class BriefCareer extends StatefulWidget {
  const BriefCareer({super.key});

  @override
  State<BriefCareer> createState() => _BriefCareerState();
}

class _BriefCareerState extends State<BriefCareer> {
  bool showDetails = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          showDetails = !showDetails;
        });
      },
      child: Container(
        decoration: decoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: showDetails
              ? Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          heading2(text: "Brief Career"),
                          Icon(
                            Icons.edit,
                            color: mutedColor,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      mutedText(
                          text:
                              "Sunt nulla duis enim ad eu laborum aute duis ad quis ullamco nisi qui. Consectetur non irure consectetur voluptate id adipisicing occaecat consectetur mollit sunt sint sint. Nostrud quis excepteur cillum incididunt voluptate eiusmod deserunt nostrud fugiat non. Deserunt officia do sint cillum ullamco veniam dolore qui exercitation est pariatur pariatur in. Dolor duis ex deserunt voluptate nulla velit anim est officia sunt.")
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    paragraph(text: "Brief Career"),
                    SizedBox(
                      width: 10,
                    ),
                    ClipOval(
                      child: Container(
                        color: primaryColor,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
