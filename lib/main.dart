import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:task/features/cars_info/presentation/views/cars_info.dart';
import 'package:task/features/home/presentation/views/home_view.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.native,
      theme: ThemeData.light(),
      locale: const Locale('ar'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/HomeView',
      getPages: [
        GetPage(name: '/HomeView', page: () => HomeView()),
        GetPage(name: '/CarsInfo', page: () => CarsInfo()),
      ],
    );
  }
}
