import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:watermanicapp/pages/MainPage.dart';
import 'package:watermanicapp/utils/ImagesDrawable.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));

    Future.delayed(Duration(seconds: 3), () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => MainPage())));
/*
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MainScreen())));
*/

    return Scaffold(
      body: Container(
        child: Image.asset(
          ImagesDrawable.splashImage,
        ),
      ),
    );
  }
}
