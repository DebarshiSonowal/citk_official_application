import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'Helper/Repository.dart';
import 'Helper/Storage.dart';
import 'Navigation/Navigate.dart';
import 'Router/Router.dart';
import 'Theme/CustomTheme.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await FlutterConfig.loadEnvVariables();
  Future.delayed(const Duration(seconds: 2), () {
    FlutterNativeSplash.remove();
  });
  Storage.instance.initializeStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Repository(),
      child: Sizer(builder: (context, orientation, deviceType) {
        return CalendarControllerProvider(
          controller: EventController(),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CITK Official',
            theme: AppTheme.getTheme(),
            navigatorKey: Navigation.instance.navigatorKey,
            onGenerateRoute: generateRoute,
          ),
        );
      }),
    );
  }
}
