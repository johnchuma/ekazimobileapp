import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';

class PrivacyPage extends StatelessWidget {
  const PrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: appbar(title: "Set Privacy"),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paragraph(text: "Available for job vacancies"),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: primaryColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.1),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paragraph(text: "Contacts is visible to public"),
                      Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: primaryColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.1),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paragraph(text: "Salary visible to public"),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: primaryColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.1),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: decoration(),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      paragraph(text: "Referees visible to public"),
                      Switch(
                        value: false,
                        onChanged: (value) {},
                        activeColor: primaryColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.1),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
