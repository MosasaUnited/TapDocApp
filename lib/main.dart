import 'package:flutter/material.dart';
import 'package:tap_doc_app/tap_doc_app.dart';

import 'core/di/dependency_injection.dart';

void main() {
  setupGetIt();
  runApp(
    const TapDocApp(),
  );
}
