import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:getx_mvvm_architecture/controllers/theme_controller.dart';
import 'package:getx_mvvm_architecture/flavors/flavor_config.dart';
import 'package:getx_mvvm_architecture/flutter_app.dart';

import 'package:getx_mvvm_architecture/utils/app_translation.dart';

import 'package:get/get.dart';

void mainCommon(Flavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  Get.put(ThemeController());
  AppTranslation translations = AppTranslation();
  await translations.loadTranslations();
  FlavorConfig.setFlavor(flavor);
  runApp(FlutterApp(
    translations: translations,
  ));
}
