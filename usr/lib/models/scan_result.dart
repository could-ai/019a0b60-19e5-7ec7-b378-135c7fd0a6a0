class ScanResult {
  final String imagePath;
  final String dishName;
  final String date;
  final int calories;
  final int protein;
  final int carbs;
  final int fats;

  ScanResult({
    required this.imagePath,
    required this.dishName,
    required this.date,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fats,
  });
}
