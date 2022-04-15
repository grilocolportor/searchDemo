// ignore_for_file: must_call_super, invalid_use_of_protected_member

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

import '../../../data/home/home_network.dart';
import '../../../external/api_search.dart';


class HomeController extends GetxController {
  final error = ''.obs;
  final list = [].obs;

  final stopProgress = false.obs;

  late TextEditingController search;

  final _homeNetwork = HomeNetwork(ApiSearch());

  @override
  Future<void> onInit() async {
    search = TextEditingController();
  }

  @override
  void onClose() {}

  Future fetchAll() async {
    stopProgress.value = !stopProgress.value;
    if (search.text.isNotEmpty) {
      list.value.clear();
      var result = await _homeNetwork.searchWipedia(keyword: search.text);
      if (result.isRight) {
        list.addAll(result.right);
      } else {
        error.value = 'Ops! Houve um error';
      }
    }

    stopProgress.value = !stopProgress.value;
  }
}
