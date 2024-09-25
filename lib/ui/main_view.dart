import 'package:arey_dhundo/ui/screens/login.dart';
import 'package:arey_dhundo/ui/screens/signup.dart';
import 'package:arey_dhundo/ui/screens/welcome.dart';
import 'package:flutter/material.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController(initialPage: 0);

  @override
Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        controller: controller,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Welcome(
              controller: controller,
            );
          } else if (index == 1) {
            return Login(
              controller: controller,
            );
          } 
           else if (index == 2) {
            return Signup(
              controller: controller,
            );
          } 
          
          // else {
          //   return VerifyScreen(
          //     controller: controller,
          //   );
          // }
        },
      ),
    );
  }
}