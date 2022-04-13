import 'package:dio/dio.dart';

class ApiSearch {
  
  static Future<Response> search({required String pathApi}) async {
    var dio = Dio();
   
    Response response = await dio.post(pathApi, );
    return response;
  }
}
