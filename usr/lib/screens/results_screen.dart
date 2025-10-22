import "package:flutter/material.dart";
import "dart:io";

class ResultsScreen extends StatelessWidget {
  final File image;

  const ResultsScreen({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analysis Results"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.file(
                image,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("Identified Dish"),
            const Text(
              "Mixed Green Salad",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("Estimated Portion Size"),
            const Text(
              "1 serving (250g)",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("Ingredients"),
            const Text(
              "Lettuce, Tomato, Cucumber, Onion, Bell Pepper, Olive Oil",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            _buildSectionTitle("Nutritional Information"),
            _buildNutritionTable(),
            const SizedBox(height: 20),
            _buildSectionTitle("Simple Recipe"),
            const Text(
              "1. Wash and chop all vegetables.\n2. Mix them in a large bowl.\n3. Drizzle with olive oil and toss to combine.\n4. Serve immediately.",
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildNutritionTable() {
    return DataTable(
      columns: const [
        DataColumn(label: Text("Nutrient")),
        DataColumn(label: Text("Amount")),
      ],
      rows: const [
        DataRow(cells: [
          DataCell(Text("Calories")),
          DataCell(Text("150 kcal")),
        ]),
        DataRow(cells: [
          DataCell(Text("Protein")),
          DataCell(Text("5g")),
        ]),
        DataRow(cells: [
          DataCell(Text("Carbohydrates")),
          DataCell(Text("10g")),
        ]),
        DataRow(cells: [
          DataCell(Text("Fats")),
          DataCell(Text("8g")),
        ]),
        DataRow(cells: [
          DataCell(Text("Fiber")),
          DataCell(Text("4g")),
        ]),
        DataRow(cells: [
          DataCell(Text("Sodium")),
          DataCell(Text("100mg")),
        ]),
      ],
    );
  }
}
