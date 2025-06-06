import 'package:flutter/material.dart';
import 'pages/home_page.dart';

// Isso é o StatefulWidget que você precisa para o seu aplicativo
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.teal,       // cor de fundo do AppBar
          foregroundColor: Colors.white,       // cor dos ícones e texto do AppBar
          surfaceTintColor: Colors.teal,       // importante no Material 3 para sombra e elevação
        ),
      ),
      home: const HomePage(),
    );
  }
}
