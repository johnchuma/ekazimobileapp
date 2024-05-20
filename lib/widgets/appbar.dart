import 'package:ekazi/widgets/back.dart';
import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'heading_text.dart';

PreferredSizeWidget appbar({title, actions}) {
  return AppBar(
    leading: Container(),
    backgroundColor: backgroundColor,
    leadingWidth: 1,
    actions: actions ?? [],
    title: Row(
      children: [
        const Back(),
        const SizedBox(
          width: 20,
        ),
        Expanded(child: heading(text: title, maxLines: 1)),
      ],
    ),
  );
}
