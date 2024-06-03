import 'package:dio/dio.dart';
import 'package:ekazi/utils/base_url.dart';
import 'package:get/get.dart';
var dio = Dio();
class JobsController extends GetxController{
 
 // ignore: prefer_typing_uninitialized_variables
 var selectedJob;

 static getJobs ({page,limit})async{
    try {
    var response = await dio.get("$baseUrl/applicant/jobs?limit=$limit&page=$page");
    return response.data["data"];
    } catch (e) {
      rethrow;
    }
 }
}