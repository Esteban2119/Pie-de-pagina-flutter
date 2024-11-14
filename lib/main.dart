import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 247, 243, 34),
          title: const Text(
            'Pruebas Pie de Pagina',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.bold,
              fontFamily: 'Chokokutai', // Usa Chokokutai tipo de letra diferente
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView( // Envuelve la columna en SingleChildScrollView
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text(
                'El león (de nombre científico Panthera leo) es un felino carnívoro de gran tamaño. Es originario del África Subsahariana y de ciertas regiones de la India',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Chokokutai',
                ),
              ),
              const SizedBox(height: 25),
              Center(
                child: Image.asset(
                  'assets/imagen/leon.jpg',
                  height: 200, 
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onHorizontalDragEnd: (details) {
                  print('Botón deslizado');
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Icon(Icons.arrow_forward, color: Colors.black),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            'Swipe to ...',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          selectedItemColor: const Color(0xFF040505),
          unselectedItemColor: Colors.black,
        ),
      ),
    );
  }
}
