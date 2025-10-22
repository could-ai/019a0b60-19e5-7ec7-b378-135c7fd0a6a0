import "package:http/http.dart" as http;
import "dart:convert";

class ApiService {
  final String openaiApiKey;
  final String calorieNinjasApiKey;

  ApiService({required this.openaiApiKey, required this.calorieNinjasApiKey});

  Future<Map<String, dynamic>> analyzeImage(String imagePath) async {
    // This is a mock implementation. In a real app, you would make an API call to OpenAI.
    await Future.delayed(const Duration(seconds: 2));
    return {
      "dishName": "Mixed Green Salad",
      "portionSize": "1 serving (250g)",
      "ingredients": "Lettuce, Tomato, Cucumber, Onion, Bell Pepper, Olive Oil",
    };
  }

  Future<Map<String, dynamic>> getNutritionalInfo(String query) async {
    // This is a mock implementation. In a real app, you would make an API call to CalorieNinjas.
    await Future.delayed(const Duration(seconds: 2));
    return {
      "calories": 150,
      "protein": 5,
      "carbs": 10,
      "fats": 8,
      "fiber": 4,
      "sodium": 100,
    };
  }

  Future<String> generateRecipe(String ingredients) async {
    // This is a mock implementation. In a real app, you would make an API call to OpenAI.
    await Future.delayed(const Duration(seconds: 2));
    return "1. Wash and chop all vegetables.\n2. Mix them in a large bowl.\n3. Drizzle with olive oil and toss to combine.\n4. Serve immediately.";
  }
}
