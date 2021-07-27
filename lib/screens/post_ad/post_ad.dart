import 'package:flutter/material.dart';

class PostAd extends StatelessWidget {
  const PostAd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: Center(child: Text('Post Ad Screen')),
        ),
      ),
    );
  }
}
