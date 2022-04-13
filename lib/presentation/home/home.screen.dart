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
        title: Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
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
                  onPressed: () => _homeController.searchWikepedia(),
                  child: Text('Pesquisar'))
            ],
          ),
          Obx(
            () => Expanded(
                child: ListView.builder(
                    itemCount: _homeController.list.value.length,
                    itemBuilder: (context, i) {
                      if (_homeController.list.value.isEmpty) {
                        return Text('Não há dados');
                      } else {
                        return ListTile(
                          title: Text( _homeController.list.value[i]['title']),
                          subtitle:  Text(_homeController.list.value[i]['snippet']),
                             
                        );
                      }
                    })),
          ),
        ],
      ),
    );
  }
}
