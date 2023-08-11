import 'package:andipputra_web/presentation/bindings/home.dart';
import 'package:andipputra_web/presentation/pages/home/home.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
    ),
  ];
}
