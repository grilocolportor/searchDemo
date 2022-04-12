import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:search_demo/infrastructure/navigation/routes.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell( 
          onTap: () => Get.toNamed(Routes.RESULT_PAGE),
          child: Text(
            'HomeScreen is working',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
