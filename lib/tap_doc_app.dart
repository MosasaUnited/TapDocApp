import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_doc_app/core/theme/colors.dart';

import 'core/router/app_router.dart';

class TapDocApp extends StatelessWidget {
  const TapDocApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Tap Doc App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
