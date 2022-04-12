import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'controllers/result_page_controller.dart';

class ResultPageView extends GetView<ResultPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ResultPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'ResultPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
