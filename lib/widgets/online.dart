import 'package:ekazi/widgets/heading_text.dart';
import 'package:flutter/material.dart';

Widget membersWidget(int number) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(30),
    child: Container(
      color: Colors.green.withOpacity(0.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          children: [
            ClipOval(
                child: Container(
              width: 10,
              height: 10,
              color: Colors.green[600],
            )),
            const SizedBox(
              width: 15,
            ),
            heading(
                text: "$number Members joined",
                color: Colors.black,
                fontSize: 11),
          ],
        ),
      ),
    ),
  );
}
