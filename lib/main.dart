import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intalagramui/instagram_route.dart';

void main() => runApp(InstagramUI());

class InstagramUI extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram UI',
      home: InstagramRoute(),
    );
  }
}
