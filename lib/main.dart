import 'package:flutter/material.dart';
import 'package:praktikum_tekmob_2_3/providers/app_state.dart';
import 'package:praktikum_tekmob_2_3/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        title: "Namer App",
        home: const HomeScreen(),
      ),
    );
  }
}
