import 'package:andipputra_web/app/routes/pages.dart';
import 'package:andipputra_web/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.buildTheme(Brightness.light),
      darkTheme: AppTheme.buildTheme(Brightness.dark),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // home: const HomePage(),
      initialRoute: Routes.initial,
      getPages: AppPages.pages,
    );
  }
}
