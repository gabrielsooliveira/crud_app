import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/gerar_numero_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var numeroGerado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Números Aleatórios'),
        titleTextStyle: GoogleFonts.lato(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
      ),
      body: Center(
        child: Text(
          numeroGerado.toString(),
          style: TextStyle(fontSize: 58, color: Colors.teal),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            numeroGerado = GerarNumeroService.gerarNumeroAleatorio(10);
          });
        }
      ),
    );
  }
}