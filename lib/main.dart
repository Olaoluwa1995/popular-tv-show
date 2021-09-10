import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:popular_tv_show/config/size-config.dart';
import 'package:popular_tv_show/views/landing-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Popular TV Show',
          home: LandingScreen(),
        );
      });
    });
  }
}