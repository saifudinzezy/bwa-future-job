import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:future_jobs/models/Category_model.dart';
import 'package:http/http.dart' as http;
import 'package:future_jobs/helper/Constant.dart';

class CategoryProvider with ChangeNotifier {
  Future<List<CategoryModel>> getCategories() async {
    try {
      var response = await http.get(
        Uri.parse("${Contant().BASE_URL}/categories"),
      );
      // print(response.statusCode);
      // print(response.body);

      if (response.statusCode == 200) {
        List<CategoryModel> categories = [];
        //ubah json menjadi list dengan jsonDecode
        List parsedJson = jsonDecode(response.body);

        //foreach dan masukan semua category
        parsedJson.forEach((category) {
          //tambahkan category ke dalam categories, dengan fungsi fromJson
          categories.add(CategoryModel.fromJson(category));
        });

        //kembalikan data categories
        return categories;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
