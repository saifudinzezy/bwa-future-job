import 'package:flutter/material.dart';
import 'package:future_jobs/pages/home_page.dart';
import 'package:future_jobs/pages/onboarding_page.dart';
import 'package:future_jobs/pages/sign_up_page.dart';
import 'package:future_jobs/pages/splash_page.dart';

import 'pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/onboarding': (context) => OnboardingPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}