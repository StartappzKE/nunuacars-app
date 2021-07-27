import 'package:flutter/material.dart';
import 'package:nunuacars/screens/authentication/authentication_screen.dart';
import 'package:nunuacars/screens/home_screen.dart';
import 'package:nunuacars/screens/post_ad/post_ad.dart';

void main() {
  runApp(NunuaCars());
}

class NunuaCars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Nunua Cars',
        theme: ThemeData.light(),
        debugShowCheckedModeBanner: false,
        initialRoute: '/login',
        routes: {
          // Authentication Screens
          '/login': (context) => AuthenticationScreen(),
          '/register': (context) => AuthenticationScreen(goToScreenIndex: 1),

          '/home': (context) => HomeScreen(),
          '/search': (context) => HomeScreen(goToScreenIndex: 1),
          '/profile': (context) => HomeScreen(goToScreenIndex: 2),
          '/menu': (context) => HomeScreen(goToScreenIndex: 3),
          // Post Ad
          '/postAd': (context) => PostAd(),
        });
  }
}
