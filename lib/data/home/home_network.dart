import 'package:either_dart/src/either.dart';
import 'dart:convert';

import '../../external/api_search.dart';

class HomeNetwork {
  static Future<Either<String, List>> searchWipedia(
      {required String keyword}) async {
    String url =
        'https://en.wikipedia.org/w/api.php?action=query&list=search&srsearch=$keyword&utf8=&format=json';
    final response = await ApiSearch.searchWikipedia(
        pathApi:
           url);

    if (response.statusCode == 200) {
      var list = response.data['query']['search'].toList();
      return Right(list);
    } else {
      return Left('Error');
    }
  }
}
