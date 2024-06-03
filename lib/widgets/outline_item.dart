import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

Widget outlineItem({text}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      ClipOval(
        child: Container(
          width: 10,
          height: 10,
          color: borderColor,
        ),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: paragraph(
            maxLines: 2,
            text: text ??
                "Deserunt consequat est ut sunt proident magna. Ipsum ex ipsum commodo culpa. Non incididunt sint id occaecat."),
      ),
    ],
  );
}
