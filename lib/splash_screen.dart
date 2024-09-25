import 'package:arey_dhundo/services/splash_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashScreenService splashservice = SplashScreenService();

  @override
  void initState(){
  super.initState();
  splashservice.isLogin(context);
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