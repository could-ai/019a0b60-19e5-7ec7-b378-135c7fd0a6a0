import "package:flutter/material.dart";

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _formKey = GlobalKey<FormState>();
  final _openaiApiKeyController = TextEditingController();
  final _clarifaiApiKeyController = TextEditingController();
  final _calorieNinjasApiKeyController = TextEditingController();
  final _edamamApiKeyController = TextEditingController();
  final _logmealApiKeyController = TextEditingController();
  final _tastyApiKeyController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Load saved API keys here
    _openaiApiKeyController.text = "YOUR_OPENAI_API_KEY";
    _clarifaiApiKeyController.text = "YOUR_CLARIFAI_API_KEY";
    _calorieNinjasApiKeyController.text = "YOUR_CALORIENINJAS_API_KEY";
    _edamamApiKeyController.text = "YOUR_EDAMAM_API_KEY";
    _logmealApiKeyController.text = "YOUR_LOGMEAL_API_KEY";
    _tastyApiKeyController.text = "YOUR_TASTYAPI_API_KEY";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              _buildApiSection(
                "OpenAI API Key",
                _openaiApiKeyController,
                "Used for image analysis and recipe generation.",
              ),
              _buildApiSection(
                "Clarifai API Key",
                _clarifaiApiKeyController,
                "Alternative for image analysis.",
              ),
              _buildApiSection(
                "CalorieNinjas API Key",
                _calorieNinjasApiKeyController,
                "Used for nutritional analysis.",
              ),
              _buildApiSection(
                "Edamam API Key",
                _edamamApiKeyController,
                "Alternative for nutritional analysis.",
              ),
              _buildApiSection(
                "LogMeal API Key",
                _logmealApiKeyController,
                "Alternative for food recognition.",
              ),
              _buildApiSection(
                "TastyAPI API Key",
                _tastyApiKeyController,
                "Alternative for recipe generation.",
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Save API keys
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Settings saved!")),
                    );
                  }
                },
                child: const Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildApiSection(
    String title,
    TextEditingController controller,
    String description,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: "API Key",
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Please enter an API key";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
