// ignore_for_file: constant_identifier_names

class Routes {
  static Future<String> get initialRoute async {
    return HOME;
  }

  static Future<String> get resultPage async {
    return RESULT_PAGE;
  }

  static const HOME = '/home';
  static const RESULT_PAGE = '/resultPage';
}
