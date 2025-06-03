import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teste_live_coding/routes/app_pages.dart';
import 'package:teste_live_coding/shared/style/app_theme.dart';
import 'package:teste_live_coding/utils/strings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initialRoute,
      getPages: AppPages.routes,
      title: AppStrings.appTitle,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
