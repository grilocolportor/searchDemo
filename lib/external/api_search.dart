import 'package:dio/dio.dart';

class ApiSearch {
  static Future<Response> searchWikipedia({required String pathApi}) async {
    var dio = Dio();
    Response response = await dio
        .get(pathApi);
    return response;
  }
}
