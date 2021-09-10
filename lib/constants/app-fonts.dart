import 'package:flutter/material.dart';
import 'package:popular_tv_show/config/size-config.dart';

class AppFonts {
  static final buttonText = TextStyle(
    fontSize: SizeConfig.textMultiplier * 2.4,
    fontWeight: FontWeight.w800,
    color: Colors.black87,
  );

  static final whiteText = TextStyle(
    fontSize: SizeConfig.textMultiplier * 3,
    color: Colors.white,
    fontWeight: FontWeight.w600
  );
}