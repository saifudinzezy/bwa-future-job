import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:future_jobs/helper/Constant.dart';
import 'package:future_jobs/models/Jobs_model.dart';
import 'package:http/http.dart' as http;

class JobProvider with ChangeNotifier {
  Future<List<JobsModel>?> getJobs() async {
    try {
      //your code
      var responses = await http.get(
        Uri.parse("${Contant().BASE_URL}/jobs"),
      );

      print(responses.statusCode);
      print(responses.body);

      if (responses.statusCode == 200) {
        List<JobsModel> jobs = [];
        List parsedJson = jsonDecode(responses.body);

        parsedJson.forEach((job) {
          jobs.add(JobsModel.fromJson(job));
        });

        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
