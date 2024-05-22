import 'package:cached_network_image/cached_network_image.dart';
import 'package:ekazi/pages/main/base_page.dart';
import 'package:ekazi/pages/main/pages/home_page.dart';
import 'package:ekazi/utils/box_decoration.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Stack(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height / 2,
                  child: Image.asset(
                    "assets/login.jpg",
                    fit: BoxFit.cover,
                  )),
              Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  top: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.white.withOpacity(0),
                          Colors.white
                        ])),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "A place where",
                          style: GoogleFonts.sen(
                              fontSize: 25,
                              color: primaryColor,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: " employers ",
                          style: GoogleFonts.sen(
                              fontSize: 25,
                              color: secondaryColor,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "meets potential candidates",
                          style: GoogleFonts.sen(
                              fontSize: 25,
                              color: primaryColor,
                              fontWeight: FontWeight.bold))
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: mutedText(
                      text: "Set your career in motion with ekazi.",
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => basePage());
                  },
                  child: Container(
                    width: double.infinity,
                    decoration: decoration(),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: paragraph(text: "Sign with email & password"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    color: primaryColor,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/google.png"),
                            SizedBox(
                              width: 5,
                            ),
                            paragraph(
                                text: "Continue with google",
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                    width: double.infinity,
                    color: textColor,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/linkin.png"),
                            SizedBox(
                              width: 5,
                            ),
                            paragraph(
                                text: "Sign in with Linkedin",
                                color: Colors.white),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
