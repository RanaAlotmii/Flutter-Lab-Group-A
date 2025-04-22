import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text("Vanilla Ice Cream"),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromARGB(255, 255, 240, 245),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Ice cream image
            Center(
              child: Image.asset(
                "images/vanilla.png",
                height: 180,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 30),

            // Title
            const Text(
              "Vanilla Ice Cream",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 136, 14, 79),
              ),
            ),

            const SizedBox(height: 20),

            // Description
            const Text(
              "Made with regular milk. Please be aware if you have a dairy allergy.\n\nBest enjoyed with a crunchy biscuit!",
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(255, 117, 117, 117),
              ),
              textAlign: TextAlign.left,
            ),

            const Spacer(),

            // Buy Button
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 68, 129),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: const Text(
                  "Buy for \$3.99",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




