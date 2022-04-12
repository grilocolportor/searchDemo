

import 'package:get/get.dart';

import '../../presentation/resultPage/result_page_view.dart';
import '../../presentation/screens.dart';
import '../bindings/controllers/home.controller.binding.dart';
import 'routes.dart';



class Nav {
  static List<GetPage> routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: HomeControllerBinding(),
    ),
     GetPage(
      name: Routes.RESULT_PAGE,
      page: () => ResultPageView(),
      binding: HomeControllerBinding(),
    ),
  ];
}
