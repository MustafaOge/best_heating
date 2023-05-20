import 'package:best_heating/features/home/home_tab_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'features/home/HomeView.dart';
import 'features/login/auth/auth_page.dart';
import 'features/login/login_page.dart';
import 'features/onboarding/onboarding_screen.dart';
import 'features/splash_page/splash_screen.dart';
import 'firebase_options.dart';
import 'product/initialize/application_start.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: 'splashScreen',
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          'SplashScreen': (context) => SplashScreen(),
          //  'emptyPageView': (context) => EmptyPage(),
          'onBoardingPage': (context) => OnboardingScreen(),
          'loginPage': (context) => LoginView(),
          'homeView': (context) => HomeView(),
          'firebaseAuth': (context) => AuthPage(),
        },
        home: const Scaffold(
          resizeToAvoidBottomInset: false,
          body: SplashScreen(),
        ));
  }
}
