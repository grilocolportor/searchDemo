// ignore_for_file: invalid_use_of_protected_member

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:search_demo/infrastructure/navigation/routes.dart';

import 'controllers/home.controller.dart';

class HomeScreen extends GetView<HomeController> {
  final _homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Demo'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: TextField(
                    controller: _homeController.search,
                    autofocus: false,
                    decoration: InputDecoration(
                      labelText: 'Pesquisar',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => _homeController.fetchAll(),
                    child: Text('Pesquisar'))
              ],
            ),
          ),
          Obx(() => Visibility(
            visible: _homeController.stopProgress.value,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )),
          Obx(
            () => Expanded(
                child: ListView.builder(
                    itemCount: _homeController.list.value.length,
                    itemBuilder: (context, i) {
                      if (_homeController.list.value.isEmpty) {
                        return Text('Não há dados');
                      } else {
                        return ListTile(
                          title: Text(_homeController.list.value[i].title),
                          subtitle:
                              Text(_homeController.list.value[i].desc),
                          onTap: () {
                            Get.toNamed(   Routes.RESULT_PAGE,   arguments: [{
                              'title': _homeController.list.value[i].title, 
                              'desc':_homeController.list.value[i].desc
                            }]);
                          },
                        );
                      }
                    })),
          ),
        ],
      ),
    );
  }
}
