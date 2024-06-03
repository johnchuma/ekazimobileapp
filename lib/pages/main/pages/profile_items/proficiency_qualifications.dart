import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class ProficiencyQualifications extends StatefulWidget {
  const ProficiencyQualifications({super.key});

  @override
  State<ProficiencyQualifications> createState() =>
      _ProficiencyQualificationsState();
}

class _ProficiencyQualificationsState extends State<ProficiencyQualifications> {
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
              ? SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          heading2(text: "Proficiency Qualifications"),
                          Icon(
                            Icons.add,
                            color: mutedColor,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset("assets/certificate.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                paragraph(
                                    maxLines: 2,
                                    text: "Certified ethical Hacker"),
                                mutedText(text: "CCNA (2011-2013)"),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.edit,
                            color: mutedColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    paragraph(text: "Proficiency Qualifications"),
                    const SizedBox(
                      width: 10,
                    ),
                    ClipOval(
                      child: Container(
                        color: primaryColor,
                        child: const Padding(
                          padding: EdgeInsets.all(2),
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
