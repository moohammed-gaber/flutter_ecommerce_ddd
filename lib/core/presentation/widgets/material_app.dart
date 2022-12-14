import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:untitled/core/application/routes/app_pages.dart';
import 'package:untitled/core/infrastructure/injection/initial_injection.dart';
import 'package:untitled/core/presentation/theme/core/app_theme.dart';

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 791),
      builder: (_, __) => GetMaterialApp(
        defaultTransition: Transition.downToUp,
        initialBinding: InitialInjection(),
        title: "Application",
        theme: AppTheme.theme,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
      ),
    );
  }
}
