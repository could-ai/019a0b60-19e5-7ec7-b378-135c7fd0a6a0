import "package:flutter/material.dart";
import "package:image_picker/image_picker.dart";
import "package:couldai_user_app/screens/home_screen.dart";
import "package:couldai_user_app/screens/history_screen.dart";
import "package:couldai_user_app/screens/settings_screen.dart";
import "package:couldai_user_app/theme/app_theme.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Nutrition Scanner",
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomeScreen(),
        "/history": (context) => HistoryScreen(),
        "/settings": (context) => const SettingsScreen(),
      },
    );
  }
}
