import 'package:api_practice_demo/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:api_practice_demo/src/pages/pages.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      // designSize: const Size(1080, 2160),
      builder: () => MaterialApp(
        title: 'API Practice',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primaryColor: mainColorSwatch,
        ),
        routes: {
          "/": (_) => const SplashPage(),
          "/intro": (_) => const IntroPage(),
          "/login": (_) => const LogInPage(),
          "/signup": (_) => const SignUpPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
