import 'package:get/get.dart';

import '../../../../presentation/resultPage/controllers/result_page_controller.dart';

class ResultPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResultPageController>(
      () => ResultPageController(),
    );
  }
}
