import 'package:flutter/material.dart';
import 'package:future_jobs/pages/home_page.dart';
import 'package:future_jobs/pages/onboarding_page.dart';
import 'package:future_jobs/pages/sign_up_page.dart';
import 'package:future_jobs/pages/splash_page.dart';
import 'package:future_jobs/providers/auth_provider.dart';
import 'package:future_jobs/providers/category_provider.dart';
import 'package:future_jobs/providers/job_provider.dart';
import 'package:future_jobs/providers/user_provider.dart';
import 'package:provider/provider.dart';

import 'pages/sign_in_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<AuthProvider>(create: (context) => AuthProvider()),
        ChangeNotifierProvider<UserProvider>(create: (context) => UserProvider()),
        ChangeNotifierProvider<CategoryProvider>(create: (context) => CategoryProvider()),
        ChangeNotifierProvider<JobProvider>(create: (context) => JobProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnboardingPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => HomePage(),
        },
      ),
    );
  }
}