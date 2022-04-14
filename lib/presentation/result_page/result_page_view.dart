// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'package:get/get.dart';

import 'controllers/result_page_controller.dart';

class ResultPageView extends GetView<ResultPageController> {
  var arguments = Get.arguments;

  @override
  Widget build(BuildContext context) {
    var d = arguments[0]['data'];
    print('---------------------------------------------$d');
    return Scaffold(
      appBar: AppBar(
        title: Text('ResultPageView'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(arguments[0]['data'].title,
                style: TextStyle(fontSize: 20),),
            Center(
              child: Html(
               data: arguments[0]['data'].desc,

              ),
            ),
          ],
        ),
      ),
    );
  }
}
