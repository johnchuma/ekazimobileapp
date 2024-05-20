import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/bottomsheet_template.dart';
import 'package:ekazi/widgets/custom_button.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/heading_text.dart';
import 'package:ekazi/widgets/job_item.dart';
import 'package:ekazi/widgets/muted_text.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:ekazi/widgets/search_form.dart';
import 'package:ekazi/widgets/select_form.dart';
import 'package:ekazi/widgets/text_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController locationController =
      TextEditingController(text: "Dar es salaam");
  TextEditingController industryController =
      TextEditingController(text: "IT & Technology");
  TextEditingController typeController =
      TextEditingController(text: "Contract");
  TextEditingController employerController =
      TextEditingController(text: "Vodacom PLC");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        leading: Container(),
        leadingWidth: 0,
        backgroundColor: backgroundColor,
        title: heading(text: "Find Jobs"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width - 85,
                    child: searchForm(text: "Search here...")),
                GestureDetector(
                  onTap: () {
                    Get.bottomSheet(bottomSheetTemplate(
                        widget: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        heading2(text: "Filter Jobs"),
                        const SizedBox(
                          height: 10,
                        ),
                        selectForm(
                            textEditingController: locationController,
                            label: "Filter by Location",
                            items: [
                              DropdownMenuItem(
                                  value: "Dar es salaam",
                                  child: paragraph(text: "Dar es salaam")),
                              DropdownMenuItem(
                                  value: "Iringa",
                                  child: paragraph(text: "Iringa")),
                              DropdownMenuItem(
                                  value: "Mbeya",
                                  child: paragraph(text: "Mbeya"))
                            ]),
                        selectForm(
                            textEditingController: industryController,
                            label: "Filter by Industry",
                            items: [
                              DropdownMenuItem(
                                  value: "IT & Technology",
                                  child: paragraph(text: "IT & Technology")),
                              DropdownMenuItem(
                                  value: "Sales",
                                  child: paragraph(text: "Sales")),
                              DropdownMenuItem(
                                  value: "Accounting",
                                  child: paragraph(text: "Accounting"))
                            ]),
                        selectForm(
                            textEditingController: typeController,
                            label: "Job type",
                            items: [
                              DropdownMenuItem(
                                  value: "Contract",
                                  child: paragraph(text: "Contract")),
                              DropdownMenuItem(
                                  value: "Fixed",
                                  child: paragraph(text: "Fixed")),
                              DropdownMenuItem(
                                  value: "Permanent",
                                  child: paragraph(text: "Permanent"))
                            ]),
                        selectForm(
                            textEditingController: employerController,
                            label: "industry",
                            items: [
                              DropdownMenuItem(
                                  value: "Vodacom PLC",
                                  child: paragraph(text: "Vodacom PLC")),
                              DropdownMenuItem(
                                  value: "Ramada",
                                  child: paragraph(text: "Ramada")),
                              DropdownMenuItem(
                                  value: "Ramani",
                                  child: paragraph(text: "Ramani"))
                            ]),
                        customButton(text: "Apply filter")
                      ],
                    )));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                        color: primaryColor,
                        child: const Padding(
                          padding: EdgeInsets.all(9),
                          child: Icon(
                            Icons.filter_alt_sharp,
                            color: Colors.white,
                          ),
                        )),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: ListView(
              children: [
                jobItem(
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/HP_logo_2012.svg/1200px-HP_logo_2012.svg.png"),
                jobItem(
                    title: "Frontend Engineer",
                    image:
                        "https://www.facebook.com/images/fb_icon_325x325.png"),
                jobItem(
                    title: "Frontend Engineer",
                    image:
                        "https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/Opera_2015_icon.svg/1200px-Opera_2015_icon.svg.png"),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
