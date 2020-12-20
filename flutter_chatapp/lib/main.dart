import 'package:flutter/material.dart';

import './screens/splash_screen.dart';
import './screens/home_screen.dart';
import './screens/chat_screen.dart';
import './helper/custom_page_transition.dart';
import './constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: kprimarySwatch,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CustomPageTransitionBuilder(),
            TargetPlatform.iOS: CustomPageTransitionBuilder(),
          },
        ),
      ),
      // home: SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => SplashScreen(),
        HomeScreen.routeName: (ctx) => HomeScreen(),
        ChatScreen.routeName: (ctx) => ChatScreen(),
      },
    );
  }
}
