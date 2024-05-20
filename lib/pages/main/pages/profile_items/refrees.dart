import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class Refrees extends StatefulWidget {
  const Refrees({super.key});

  @override
  State<Refrees> createState() => _RefreesState();
}

class _RefreesState extends State<Refrees> {
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
                          heading2(text: "Refrees"),
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
                          Icon(
                            Icons.person,
                            color: mutedColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                paragraph(maxLines: 2, text: "Derick japhet"),
                                mutedText(text: "Software developer"),
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
                    paragraph(text: "Refrees"),
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
