import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Punto de entrada de la app
}

// Widget principal
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String appName = "GojiMax"; // Nombre de la app

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName, // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.cyan, // Color principal de la app
      ),
      home: const HomeScreen(), // Pantalla inicial
      debugShowCheckedModeBanner: false, // Oculta la etiqueta "debug"
    );
  }
}

// Pantalla de inicio
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        // Permite superponer widgets (imagen de fondo + texto + filtro)
        children: [
          // Imagen de fondo desde internet (tema cinematográfico)
          Positioned.fill(
            child: Image.network(
              'https://img.freepik.com/fotos-gratis/vista-3d-de-um-casal-no-cinema-assistindo-a-um-filme_23-2151016104.jpg',
              fit: BoxFit.cover, // Cubre toda la pantalla
            ),
          ),

          // Capa semitransparente para oscurecer ligeramente el fondo
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.5),
            ),
          ),

          // Contenido centrado
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min, // Ajusta al contenido
              children: const [
                Icon(
                  Icons.movie_creation_rounded, // Ícono de película
                  color: Color.fromARGB(255, 21, 208, 196),
                  size: 80,
                ),
                SizedBox(height: 20),
                Text(
                  "¡Bienvenido a!", // Mensaje de bienvenida
                  style: TextStyle(
                    fontSize: 26,
                    color: Color.fromARGB(255, 21, 208, 196),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  MyApp.appName, // Nombre de la aplicación
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 21, 208, 196),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Donde las historias cobran vida",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white70,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
