import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:jlpt_exp/config/value/app_string.dart';

import 'app/routes/app_pages.dart';
import 'config/theme/app_theme.dart';
import 'config/translation/app_translation.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      title: "appTitle".tr,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: AppTheme.lightTheme1,
      darkTheme: AppTheme.darkTheme1,
      translations: AppTranslation(),
      locale: Get.deviceLocale,
      fallbackLocale: AppString.baseLocale,
    ),
  );
}
