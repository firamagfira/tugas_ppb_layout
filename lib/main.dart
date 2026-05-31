import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TravelPage(),
    );
  }
}

class TravelPage extends StatelessWidget {
  const TravelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 150, 62, 62),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              // HEADER
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.amber,
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.person),
                    ),

                    const SizedBox(width: 10),

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "MAGHFIRAH",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "maghfirah@gmail.com",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    const Column(
                      children: [
                        Text("POINT"),
                        Text(
                          "825",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // BANNER
              Container(
                height: 180,
                width: double.infinity,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.indigo,
                      Colors.blue,
                    ],
                  ),
                ),
                child: const Center(
                  child: Text(
                    "GET 20% OFF",
                    style: TextStyle(
                      color: Colors.yellow,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // BARIS 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  menu(Icons.flight, "Flights"),
                  menu(Icons.location_on, "Destinations"),
                  menu(Icons.hotel, "Hotels"),
                ],
              ),

              const SizedBox(height: 20),

              // BARIS 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  menu(Icons.directions_car, "Car Rentals"),
                  menu(Icons.train, "Trains"),
                  menu(Icons.restaurant, "Culinary"),
                ],
              ),

              const SizedBox(height: 20),

              // BARIS 3
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  menu(Icons.security, "Insurance"),
                  menu(Icons.discount, "Coupons"),
                  menu(Icons.event, "Events"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget menu(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 28,
          backgroundColor: Colors.blue.shade100,
          child: Icon(
            icon,
            size: 30,
            color: Colors.blue,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}