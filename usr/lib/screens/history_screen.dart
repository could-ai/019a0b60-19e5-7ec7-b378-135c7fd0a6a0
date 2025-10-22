import "package:flutter/material.dart";
import "../models/scan_result.dart";

class HistoryScreen extends StatelessWidget {
  final List<ScanResult> scanHistory = [
    ScanResult(
      imagePath: "assets/images/salad.jpg",
      dishName: "Mixed Green Salad",
      date: "2024-07-29",
      calories: 150,
      protein: 5,
      carbs: 10,
      fats: 8,
    ),
    ScanResult(
      imagePath: "assets/images/pasta.jpg",
      dishName: "Spaghetti Bolognese",
      date: "2024-07-28",
      calories: 450,
      protein: 25,
      carbs: 50,
      fats: 20,
    ),
    ScanResult(
      imagePath: "assets/images/smoothie.jpg",
      dishName: "Berry Smoothie",
      date: "2024-07-27",
      calories: 250,
      protein: 10,
      carbs: 30,
      fats: 5,
    ),
  ];

  HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Scan History"),
      ),
      body: ListView.builder(
        itemCount: scanHistory.length,
        itemBuilder: (context, index) {
          final scan = scanHistory[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(
                scan.imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(scan.dishName),
              subtitle: Text(scan.date),
              trailing: Text("${scan.calories} kcal"),
              onTap: () {
                // Navigate to a detailed view of the scan
              },
            ),
          );
        },
      ),
    );
  }
}
