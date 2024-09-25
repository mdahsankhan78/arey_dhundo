import 'package:arey_dhundo/ui/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
 final List<Widget> carouselItems = [
    Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.brown[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          const Expanded(
            flex: 2,
            child: const Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "25% OFF",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "on Your First Tailoring Order",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          // Right side image (shirt image)
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Icon(
                Icons.cut, // You can replace this with another image
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    ),
    // Add more items if needed
    Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.redAccent[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "50% OFF",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "on First Matchmaking Session",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          // Right side image (beauty related image or another icon)
          Expanded(
            flex: 1 ,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.favorite, // You can replace this with another image
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    ),

    Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.green[600],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "10% OFF",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "on First Mehndi Application",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          // Right side image (beauty related image or another icon)
          Expanded(
            flex: 1 ,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.brush, // You can replace this with another image
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    ),

    Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: Colors.pink[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left side text
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "15% OFF",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "on First Beauty Parlor Service",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          // Right side image (beauty related image or another icon)
          Expanded(
            flex: 1 ,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.face_retouching_natural, // You can replace this with another image
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  // Method to show a modal bottom sheet with detailed info
  void _showServiceDetails(BuildContext context, String categoryName, IconData icon, Color? color, String details, String address, String phone) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 6,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(icon, size: 60, color: color),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          categoryName,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          details,
                          style: const TextStyle(fontSize: 20),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Divider(thickness: 2),
              const SizedBox(height: 16),
              ListTile(
                leading: const Icon(Icons.location_on, color: Colors.blue),
                title: Text(address, style: const TextStyle(
                          fontSize: 20,
                        ),),
              ),
              ListTile(
                leading: const Icon(Icons.phone, color: Colors.blue),
                title: Text(phone,style: const TextStyle(
                          fontSize: 20,
                        ),),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }


   Widget _buildCategoryCard(IconData icon, String categoryName, Color? color, String details, String address, String phone) {
    return GestureDetector(
      onTap: () => _showServiceDetails(context, categoryName, icon, color, details, address, phone),
      child: Card(
        elevation: 4, // Add shadow to the card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
                color: color // Icon color can be changed
              ),
              const SizedBox(height: 8), // Spacing between icon and text
              Text(
                categoryName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home", style: TextStyle(color: Colors.black,fontSize: 24,)),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        actions: [
          MyAppbar(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good morning, Tom", // Change name dynamically if needed
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 8), // Spacing between the text and heading
              const Text(
                "Discover top-notch services\nfor tailoring, mehndi design matchmaking, and beauty\ntreatments—all in one place.",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff121331),
                ),
              ),
              const SizedBox(height: 24), // Add some spacing before the carousel
              CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                ),
                items: carouselItems,
              ),
        
              const SizedBox(height: 24), // Spacing between the text and heading
              const Text(
                "Find Services",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff121331),
                ),
              ),
        
              const SizedBox(height: 24),
              // Creating a GridView to show cards in two columns
             // Now wrapping GridView inside a Container and enabling shrinkWrap
              Container(
                height: 400, // Set an appropriate height for the GridView
                child: GridView.count(
                  crossAxisCount: 2, // Number of columns
                  crossAxisSpacing: 16, // Spacing between columns
                  mainAxisSpacing: 16, // Spacing between rows
                  shrinkWrap: true, // Enable shrinkWrap to avoid infinite height issue
                  physics: const NeverScrollableScrollPhysics(), // Prevent GridView from scrolling
                  children: [
                    _buildCategoryCard(Icons.cut, "Tailoring", Colors.brown[500],
                        "25% off on your first tailoring order", "80 Royal Ln, Mesa, NJ", "(555) 555-5555"),
                    _buildCategoryCard(Icons.favorite, "Matchmaking", Colors.redAccent[400],
                        "50% off on first matchmaking session", "6 Corporate Dr, Cranbury, NJ", "(555) 123-4567"),
                    _buildCategoryCard(Icons.brush, "Mehndi", Colors.green[600],
                        "10% off on your first Mehndi application", "326 Lafayette Ave, Hawthorne, NJ", "(555) 987-6543"),
                    _buildCategoryCard(Icons.face_retouching_natural, "Beauty", Colors.pink[400],
                        "15% off on your first beauty service", "80 Royal Ln, Mesa, NJ", "(555) 555-5555"),
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