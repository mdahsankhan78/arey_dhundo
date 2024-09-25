import 'package:arey_dhundo/ui/main_view.dart';
import 'package:flutter/material.dart';

String title ='';
class MyAppbar extends StatefulWidget {
 
  MyAppbar({super.key});

  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {

@override
  void initState() {
    super.initState();
  }
  


  @override
  Widget build(BuildContext context) {
    return 
              Padding(
              padding: const EdgeInsets.only(right: 16.0), // Add right margin
              child: Row(
                children:[
                ElevatedButton(
                onPressed:(){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => MainView(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF50057),
                  
                ),
                
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white,fontSize: 20,), // Set text color to white
                ),
              ),
                ]
              ),
            );
             
             
             
           
  }
}