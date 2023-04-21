import 'package:flutter/material.dart';

import 'home_page.dart';



class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:25.0),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            children: [
            // logo
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset(
                  '/Users/phamkate/Documents/nikeshop2/lib/images/nikelogo.jpeg',
                  height: 240,
                  
                  ),
              ),
           const SizedBox( height: 38),
        
              // title 
        
           const Text (
              'Just Do It',
              style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
        
              ),
              
              ),  
           const SizedBox( height: 38),
              // Subtitle 
              const Text (
                'Brand new sneakers and custom  kicks made with premium quality',
                style: TextStyle(
                fontSize: 16,
                color: Colors.grey, 
                ),
              textAlign: TextAlign.center,
              ),  
        
                  const SizedBox( height: 48),
              //Shop now button 

              GestureDetector(
                onTap: () => Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => HomePage(),
                    ),
                  ),

                child: Container(
                 decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(12),
                 ),
              
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: const Center(
                      child:  Text(
                        'Shop Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          
                          ),
                      
                        
                        ),
                    ),
                  ),
              
                  
                  ),
              )
        
        
        
        
            ],
        
          ),
        )
         
        ),

    );
  }
}