import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/text_form.dart';
import 'package:flutter/material.dart';

class SendApplicationPage extends StatelessWidget {
  const SendApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar(title: "Send Application"),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
                const SizedBox(
                height: 10,
              ),
              paragraph(text: "Subject"),
              const SizedBox(
                height: 5,
              ),
              TextForm(
                hint: "Full Stack Developer Job application",
                initialValue: "Full Stack Developer Job application", lines: 2),
              const SizedBox(
                height: 10,
              ),
              paragraph(text: "Write cover letter"),
              const SizedBox(
                height: 5,
              ),
              TextForm(hint: "Write something here.", lines: 8),
              const SizedBox(
                height: 20,
              ),
              customButton(text: "Send Application")
            ],
          ),
        ),
      ),
    );
  }
}
