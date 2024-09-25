import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key, required this.controller});
  final PageController controller;

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
   Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:const EdgeInsets.only(right : 30.0, left: 30.0,top: 5.0),
                child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,),
                ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Column(
                  textDirection: TextDirection.ltr,
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Welcome!',
                      style: TextStyle(
                        color: Color(0xFFF50057),
                        fontSize: 35,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                   const  Center(
                      child: Text(
                        'Bringing Quality Services to Your Doorstep with Just a Tap.',
                        textAlign: TextAlign.center, // Ensure text is centered within its container
                        style: TextStyle(
                          color: Color(0xFFF50057),
                          fontSize: 24,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  
                  const SizedBox(
                      height: 50,
                    ),
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        width: 400,
                        height: 56,
                        child: ElevatedButton(
                          onPressed: () {
        
                             widget.controller.animateToPage(1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);       
        
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFF50057),
                          ),
                          child: const Text(
                            'Log In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
        
                    const SizedBox(
                      height: 20,
                    ),
                   
                   
                   
                  
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: SizedBox(
                        width: 400,
                        height: 56,
                         child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xFFF50057), // Border color
                            width: 2, // Border width
                            
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: ElevatedButton(
                          onPressed: () {
        
                            widget.controller.animateToPage(2,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease);         
        
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color(0xFFF50057),
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}