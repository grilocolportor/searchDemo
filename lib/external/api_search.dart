import 'package:dio/dio.dart';
import 'package:search_demo/external/search_api_interface.dart';

class ApiSearch implements IRepository{

  @override
  Future<Response> fetch({required String pathApi}) async {
    var dio = Dio();
   
    var response = await dio.post(pathApi);
    return response;
  }
 
  
}
