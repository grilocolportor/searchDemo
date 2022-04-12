import 'package:dio/dio.dart';

class ApiSearch {
  static Future searchWikipedia() async {
    var dio = Dio();
    final response = await dio
        .get('api.php?action=query&list=search&srwhat=text&srsearch=meaning');
    return response;
  }
}
