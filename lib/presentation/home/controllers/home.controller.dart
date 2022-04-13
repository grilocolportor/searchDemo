import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:search_demo/data/home/home_network.dart';

class HomeController extends GetxController {
  final error = ''.obs;
  final list = [].obs;

  final stopProgress = false.obs;

  late TextEditingController search;

  @override
  void onInit() {
    search = TextEditingController();
  }

  @override
  void onClose() {}

  Future searchWikepedia() async {
    stopProgress.value = !stopProgress.value;
    list.value.clear();
    var result = await HomeNetwork.searchWipedia(keyword: search.text);
    if (result.isRight) {
      list.addAll(result.right);
    } else {
      error.value = 'Ops! Houve um error';
    }
    stopProgress.value = !stopProgress.value;
  }
}
