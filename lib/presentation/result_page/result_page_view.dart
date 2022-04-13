// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/result_page_controller.dart';

class ResultPageView extends GetView<ResultPageController> {
  var arguments = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResultPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          arguments[0]['title'],
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
