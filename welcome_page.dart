import 'package:flutter/material.dart';
import 'package:taskthri/views/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 228, 236),
      body: Column(
        children: [
          SizedBox(height: 225),
          Center(
            child: Image.asset( 'images/ice-cream-cone.png',
              width: 300,
            ),
          ),

          SizedBox(height: 75),

          Center(
            child: Column(
              children: [
                Text( "Fall in Love with Ice Cream!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 136, 14, 79),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 14),
                Text( "Welcome to our sweet world of frozen delights.\nEvery scoop brings joy!",
                  style: TextStyle(
                    fontSize: 17,
                    color: const Color.fromARGB(255, 194, 24, 91),
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),

          Spacer(),

          Padding(
            padding: const EdgeInsets.all(20), 
            child: SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () { 
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Home()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 68, 129),
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text("Get Started", style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
