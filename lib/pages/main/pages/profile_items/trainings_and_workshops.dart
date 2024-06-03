import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class TrainingsAndWorkshops extends StatefulWidget {
  const TrainingsAndWorkshops({super.key});

  @override
  State<TrainingsAndWorkshops> createState() => _TrainingsAndWorkshopsState();
}

class _TrainingsAndWorkshopsState extends State<TrainingsAndWorkshops> {
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
                          heading2(text: "Trainings and Workshops"),
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
                          SizedBox(
                              height: 20,
                              child: Image.asset("assets/workshop.png")),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                paragraph(
                                    maxLines: 2, text: "Tech Hackers summit"),
                                mutedText(text: "Serena - 2011"),
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
                    paragraph(text: "Trainings and Workshops"),
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
