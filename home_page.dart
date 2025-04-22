import 'package:flutter/material.dart';
import 'package:taskthri/views/details_page.dart';
import 'package:taskthri/widgets/ice_cream_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 240, 245),
      appBar: AppBar(
        backgroundColor: Colors.pink[100],
        title: const Text("Ice Cream Shop"),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        children: [
          // ✅ Vanilla card with navigation
          CustomIceCreamCard(
            imagePath: 'images/vanilla.png',
            title: 'Vanilla',
            subtitle: 'Classic & Smooth',
            price: '3.99',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DetailsPage()),
              );
            },
          ),

          const CustomIceCreamCard(
            imagePath: 'images/chocolate.png',
            title: 'Chocolate',
            subtitle: 'Rich & Creamy',
            price: '4.50',
          ),
          const CustomIceCreamCard(
            imagePath: 'images/Strawberry .png',
            title: 'Strawberry',
            subtitle: 'Fresh & Fruity',
            price: '4.25',
          ),
          const CustomIceCreamCard(
            imagePath: 'images/Mango .png',
            title: 'Mango',
            subtitle: 'Tropical Vibes',
            price: '4.30',
          ),
          const CustomIceCreamCard(
            imagePath: 'images/Candy .png',
            title: 'Candy Crush',
            subtitle: 'Colorful & Sweet',
            price: '4.60',
          ),
          const CustomIceCreamCard(
            imagePath: 'images/Vanilla & Chocolate Mix.png',
            title: 'Mix Delight',
            subtitle: 'Best of Both',
            price: '4.75',
          ),
        ],
      ),
    );
  }
}


