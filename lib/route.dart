import 'package:get/get.dart';
import 'package:portfolio/screens/home_widget.dart';
import 'package:portfolio/screens/profile_widget.dart';

class AppRoute {
  /// private contractor
  AppRoute._();

  /// all route names here
  static String get home => "/";
  static String get profile => "/profile";

  /// all routers here
  static List<GetPage> get pages => [
    GetPage(name: home, page: () => const MyHomePage()),
    GetPage(name: profile, page: () => const ProfileWidget()),
  ];
}