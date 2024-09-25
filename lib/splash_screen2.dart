import 'package:arey_dhundo/services/splash_service2.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  SplashScreenService2 splashservice = SplashScreenService2();

  @override
  void initState(){
  super.initState();
  splashservice.LoggedIn(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.cover,
        ),
        ),
    );
  }
}