import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_demo/base/app_setup.locator.dart';
import 'package:stacked_demo/base/app_setup.router.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../services/auth_service.dart';

class SplashViewModel extends BaseViewModel {
  final BuildContext context;

  SplashViewModel(this.context);

  void init() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    if (locator<AuthService>().email != null) {
      locator<NavigationService>().pushNamedAndRemoveUntil(Routes.homeView);
      return;
    }
    locator<NavigationService>().pushNamedAndRemoveUntil(Routes.loginView);
  }
}
