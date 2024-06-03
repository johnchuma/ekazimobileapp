import 'package:ekazi/controllers/jobs_controller.dart';
import 'package:ekazi/utils/colors.dart';
import 'package:ekazi/widgets/featured_job_item.dart';
import 'package:ekazi/widgets/heading2_text.dart';
import 'package:ekazi/widgets/job_item.dart';
import 'package:ekazi/widgets/paragraph.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeneralJobs extends StatefulWidget {
  const GeneralJobs({super.key});

  @override
  State<GeneralJobs> createState() => _GeneralJobsState();
}

class _GeneralJobsState extends State<GeneralJobs> {
   JobsController jobsController = JobsController();
   @override
  void initState() {
    Get.put(jobsController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: FutureBuilder(
            future: JobsController.getJobs(page: 1,limit: 30),
            builder: (context,snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting){
                return Center(child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(color: primaryColor)),
                ));
              }
              List<dynamic> data = snapshot.requireData as List<dynamic>;
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                          heading2(text: "Featured Jobs"),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: data.where((element) => element['featured'] == 1).map((item) => featuredJobItem(item)).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          heading2(text: "All Jobs"),
                          paragraph(
                              text: "See All",
                              color: primaryColor,
                              textDecoration: TextDecoration.underline)
                        ],
                      ),
                    ),
                   Column(children:  data.where((element) => element['featured'] == 0).map((item) {
                      return jobItem(item);
                    }).toList(),),
                    
                  ],
                ),
              );
            }
          ),
        ),
      );
    
  }
}
