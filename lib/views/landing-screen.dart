import 'package:flutter/material.dart';
import 'package:popular_tv_show/config/size-config.dart';
import 'package:popular_tv_show/constants/app-fonts.dart';

class LandingScreen extends StatefulWidget {
  LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bg.jpg'),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          width: size.width,
          color: Colors.black.withOpacity(0.6),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Watch the most popular and super amazing TV shows', 
                style: AppFonts.whiteText,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.heightMultiplier * 6,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: SizeConfig.heightMultiplier * 6,
                  width: SizeConfig.widthMultiplier * 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: AppFonts.buttonText,
                    ),
                  )
                ),
              )
            ],
          )
        )

      )
    );
  }
}
