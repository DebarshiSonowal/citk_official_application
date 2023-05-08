import 'package:citk_official_application/Routes/history_page.dart';
import 'package:citk_official_application/Routes/home_page.dart';
import 'package:flutter/material.dart';

import '../Navigation/Navigate.dart';
import '../Routes/Loader/loading_dialog.dart';
import '../Routes/about_page.dart';
import '../Routes/class_routine.dart';
import '../Routes/courses_page.dart';
import '../Routes/departments_page.dart';
import '../Routes/notification_page.dart';
import '../Routes/search_page.dart';
import '../Routes/splash_screen.dart';
import 'FadeTransitionBuilder.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/notification':
      return FadeTransitionPageRouteBuilder(page: const NotificationPage());
    case '/loading':
      return FadeTransitionPageRouteBuilder(page: LoadingDialog());
    case '/search':
      return FadeTransitionPageRouteBuilder(page: const SearchPage());
    case '/history':
      return FadeTransitionPageRouteBuilder(
          page: const HistoryPage(title: "History"));
    case '/course':
      return FadeTransitionPageRouteBuilder(
          page: const CoursePage(title: "Course"));
    case '/department':
      return FadeTransitionPageRouteBuilder(
          page: const DepartmentsPage(title: "Departments"));
    case '/about':
      return FadeTransitionPageRouteBuilder(
          page: AboutPage(
        title: settings.arguments as String,
      ));
    case '/classRoutine':
      return FadeTransitionPageRouteBuilder(page: const ClassRoutine());
    case '/main':
      return FadeTransitionPageRouteBuilder(page: const HomePage());
    case '/':
      return FadeTransitionPageRouteBuilder(page: const SplashScreen());
    default:
      return FadeTransitionPageRouteBuilder(page: Container());
    // return FadeTransitionPageRouteBuilder(page: SearchPage());
  }
}
