import 'package:get/get_connect/http/src/response/response.dart';

abstract class IRepository{
   Future<dynamic> fetch({required String pathApi}) ;
}