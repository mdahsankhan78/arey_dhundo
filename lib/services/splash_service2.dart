import 'dart:async';

import 'package:arey_dhundo/ui/main_view.dart';
import 'package:arey_dhundo/ui/screens/categories.dart';
import 'package:flutter/material.dart';

class SplashScreenService2{
  void LoggedIn(BuildContext context)
  {
    Timer(Duration(seconds:4), () => Navigator.push(context, MaterialPageRoute(builder: (context) =>  Categories())));

  }
}