import 'package:get/get.dart';
import 'package:modul_1/app/modules/bindings/home_binding.dart';
import 'package:modul_1/app/modules/bindings/profile_binding.dart';
import 'package:modul_1/app/modules/views/Screen/home_view.dart';
import 'package:modul_1/app/modules/views/Screen/user_detail.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
        name: _Paths.profile,
        page: () => const ProfileScreen(),
        binding: ProfileBinding()),
  ];
}
