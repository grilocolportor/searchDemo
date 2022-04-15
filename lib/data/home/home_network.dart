import 'package:either_dart/either.dart';
import 'package:search_demo/external/search_api_interface.dart';
import 'dart:convert';

import '../../domain/result.dart';
import '../../settings/constants.dart' as configs;

class HomeNetwork {
  final IRepository repository;

  HomeNetwork(this.repository);

  Future<Either<String, List<Result>>> searchWipedia(
      {required String keyword}) async {
    String url = configs.urlWikepedia + keyword + '&utf8=&format=json';

    final response = await repository.fetch(pathApi: url);

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
