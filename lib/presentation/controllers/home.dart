import 'package:get/get.dart';

class HomeController extends GetxController {
  /// Navigation Menu
  final navigationMenuList =
      <String>['About', 'Experience', 'Skills', 'Education'].obs;

  final selectedNavigatorMenu = 'About'.obs;

  selectMenu(String menu) {
    selectedNavigatorMenu.value = menu;
    update();
  }

  /// Body

}
