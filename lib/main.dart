import 'package:flutter/material.dart';
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
        initialRoute: '/postAd',
        routes: {
          '/postAd': (context) => PostAd(),
        });
  }
}
