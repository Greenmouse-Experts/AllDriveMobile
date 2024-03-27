import 'package:roadside_heroes_app/routes/app_routes.dart';
import 'package:roadside_heroes_app/screens/sign_in.dart';
import 'package:roadside_heroes_app/screens/user%20screens/authentication.dart';
import 'package:roadside_heroes_app/screens/onboarding.dart';
import 'package:roadside_heroes_app/screens/user%20screens/signed_home.dart';
import 'package:roadside_heroes_app/screens/user%20screens/unsigned_home.dart';

import '../screens/service personnel screens/service_personnel_home.dart';

class AuthRoutes {
  static AppRoute onboardingScreen = AppRoute(
    name: 'onboarding',
    path: '/',
    builder: (_, __) => const Onboarding(),
  );
  static AppRoute login = AppRoute(
    name: 'login',
    path: '/login',
    builder: (_, __) => const SignInScreen(),
  );
  static AppRoute viewOptions = AppRoute(
    name: 'viewOptions',
    path: '/viewOptions',
    builder: (_, __) => const AuthenticationScreen(),
  );
  // Additional routes:
  static AppRoute dashboard = AppRoute(
    name: 'personnel',
    path: '/personnel',
    builder: (_, __) => const ServicePersonnelHome(),
  );
  static AppRoute singedUser = AppRoute(
    name: 'signedUser',
    path: '/signedUser',
    builder: (_, __) => const SignedHomeScreen(),
  );
  static AppRoute unsignedUser = AppRoute(
    name: 'unSignedUser',
    path: '/unSignedUser',
    builder: (_, __) => const UnsignedHomeScreen(),
  );
  static AppRoute singnIn = AppRoute(
    name: 'signIn',
    path: '/signIn',
    builder: (_, __) => const SignInScreen(),
  );
  // Add more routes as needed
}
