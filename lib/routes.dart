import 'package:get/route_manager.dart';

// import 'pages/cart/index.dart';
import 'package:nms_productivity_portal/views/intro_screen.dart';
import 'package:nms_productivity_portal/views/check_auth.dart';
import 'package:nms_productivity_portal/views/signin_page.dart';

routes() => [
  GetPage(name: "/", page: () => SignInPage()),
  GetPage(name: "/signIn", page: () => SignInPage()),
  GetPage(name: "/intro", page: () => IntroScreen()),
];