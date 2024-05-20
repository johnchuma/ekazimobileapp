import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/appbar.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class UpgradePage extends StatelessWidget {
  const UpgradePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(title: "Upgrade to premium"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Image.asset("assets/upgrade.png"),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
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
                SizedBox(
                  width: 10,
                ),
                mutedText(text: "Download CV without watermark")
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
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
                const SizedBox(
                  width: 10,
                ),
                mutedText(text: "Featured to ekazi platform")
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
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
                const SizedBox(
                  width: 10,
                ),
                mutedText(text: "Direct communication with Employees")
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            customButton(text: "Upgrade Now", color: secondaryColor),
          ],
        ),
      ),
    );
  }
}
