import 'package:flutter/material.dart';

class CustomIceCreamCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final String price;
  final VoidCallback? onTap;

  const CustomIceCreamCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(8),
          width: 140,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 228, 236),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              SizedBox(height: 30),
              Image.asset(
                imagePath,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 17),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Color.fromARGB(255, 136, 14, 79),
                ),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  fontSize: 13,
                  color: Color.fromARGB(255, 117, 117, 117),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "\$$price",
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromARGB(255, 194, 24, 91),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


