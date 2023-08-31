import 'package:get/get.dart';
import 'package:greengrocer/src/pages/base/base_screen.dart';
import 'package:greengrocer/src/pages/splash/splash_screen.dart';
import '../pages/auth/views/sign_in_screen.dart';
import '../pages/auth/views/sign_up_screen.dart';
import '../pages/base/binding/navigation_binding.dart';
import '../pages/cart/binding/cart_binding.dart';
import '../pages/home/binding/home_binding.dart';

abstract class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: PagesRoutes.splashRoute,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: PagesRoutes.signInRoute,
      page: () => SignInScreen(),
    ),
    GetPage(
      name: PagesRoutes.signUpRoute,
      page: () => SignUpScreen(),
    ),
    GetPage(
      name: PagesRoutes.baseRoute,
      bindings: [
        NavigationBinding(),
        HomeBinding(),
        CartBinding(),
      ],
      page: () => const BaseScreen(),
    ),
  ];
}

abstract class PagesRoutes {
  static const String splashRoute = '/splash';
  static const String signInRoute = '/signin';
  static const String signUpRoute = '/signup';
  static const String baseRoute = '/';
}
