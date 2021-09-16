import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //* AppBar
      appBar: AppBar(
        title: const Text('Nosotr@s App'),
      ),
      //? Cambiar pantalla
      body: PageView(
        children: [
          CustomScreen(color: Colors.white12),
          CustomScreen(color: Colors.green),
        ],
      ),

      //*Tabs - Modulos
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: (index) {
          currentPage = index;

          setState(() {});
        },
        backgroundColor: Colors.blue, //iconos
        selectedItemColor: Colors.white, //iconos seleccionados
        unselectedItemColor:
            Colors.white.withOpacity(0.5), //iconos sin seleccionar
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Inicio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_run), label: 'Que Puedo hacer'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text('Hello World'),
      ),
    );
  }
}
