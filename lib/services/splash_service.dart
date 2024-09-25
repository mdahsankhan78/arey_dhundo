import 'dart:async';

import 'package:arey_dhundo/ui/main_view.dart';
import 'package:flutter/material.dart';

class SplashScreenService{
  void isLogin(BuildContext context)
  {
    Timer(Duration(seconds:4), () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  MainView())));

  }
}