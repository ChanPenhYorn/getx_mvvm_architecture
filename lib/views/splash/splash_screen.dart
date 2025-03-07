import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:getx_mvvm_architecture/controllers/service_controller.dart';
import 'package:getx_mvvm_architecture/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Bind the SplashController

    ServiceController serviceController = Get.find();

    Get.find<SplashController>();

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      body: Center(
        child: Image.asset("assets/images/app_logo.png"),
      ),
    );
  }
}
