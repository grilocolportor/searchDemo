import 'package:either_dart/src/either.dart';
import 'dart:convert';

import '../../domain/result.dart';
import '../../external/api_search.dart';
import '../../settings/constants.dart' as configs;

class HomeNetwork {
  static Future<Either<String, List<Result>>> searchWipedia(
      {required String keyword}) async {
    String url = configs.urlWikepedia + keyword + '&utf8=&format=json';
    final response = await ApiSearch.search(pathApi: url);

    if (response.statusCode == 200) {
      List<Result> listResult = [];

      List list = response.data['query']['search'].toList();

      for (var element in list) {
        var r = Result(title: element['title'], desc: element['snippet']);
        listResult.add(r);
      }
      return Right(listResult);
    } else {
      return Left('Error');
    }
  }
}
