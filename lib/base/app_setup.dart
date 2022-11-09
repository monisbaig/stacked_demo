import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_demo/views/home/home_view.dart';
import 'package:stacked_demo/views/login/login_view.dart';
import 'package:stacked_demo/views/splash/splash_view.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/auth_service.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: SplashView, initial: true),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(
      classType: AuthService,
    ),
    Singleton(
      classType: NavigationService,
    ),
  ],
)
class App {}
