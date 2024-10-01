import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_doc_app/tap_doc_app.dart';
import 'core/di/dependency_injection.dart';

void main() async{
  setupGetIt();
  // To Fix texts being hidden bug in release mode
  await ScreenUtil.ensureScreenSize();
  runApp(
    const TapDocApp(),
  );
}
