import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class FlavorConfig {
  static const APP_NAME =
      String.fromEnvironment('DEFINE_APP_NAME', defaultValue: 'noFlavor');
  static const APP_SUFFIX =
      String.fromEnvironment('DEFINE_APP_SUFFIX', defaultValue: 'noFlavor');

  static bool isDevelopment() => APP_SUFFIX == '.dev';
  static bool isQA() => APP_SUFFIX == '.qa';
  static bool isProduction() => APP_SUFFIX == 'noFlavor';

  static String bannerName() {
    if (APP_SUFFIX == '.dev') {
      return 'DEV';
    } else if (APP_SUFFIX == '.qa') {
      return 'QA';
    } else {
      return '';
    }
  }

  static Color bannerColor() {
    if (APP_SUFFIX == '.dev') {
      return Colors.purpleAccent;
    } else if (APP_SUFFIX == '.qa') {
      return Colors.orangeAccent;
    } else {
      return Colors.transparent;
    }
  }
}
