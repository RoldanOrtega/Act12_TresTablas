import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> portadas = [
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/l.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/libro2.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/libro3.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/ll.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/cumbres.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/lobro4.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/l.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/libro2.JPG',
      'https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/main/libro3.JPG',
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF121212),
          elevation: 0,
          title: const Text('Biblioteca Andrea Roldan 6-I', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          actions: [
            IconButton(icon: const Icon(Icons.search, size: 22), onPressed: () {}),
            IconButton(icon: const Icon(Icons.more_vert, size: 22), onPressed: () {}),
          ],
          bottom: const TabBar(
            indicatorColor: Color.fromARGB(255, 245, 147, 204),
            indicatorWeight: 3,
            labelPadding: EdgeInsets.symmetric(horizontal: 4),
            labelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            tabs: [
              Tab(text: 'LECTURAS ACTUALES'),
              Tab(text: 'ARCHIVO'),
              Tab(text: 'LISTAS DE LECTURA'),
            ],
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Otras Historias', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                  Text('297 Historias', style: TextStyle(color: Colors.grey, fontSize: 12)),
                ],
              ),
            ),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, 
                  childAspectRatio: 0.6, 
                  crossAxisSpacing: 10, 
                  mainAxisSpacing: 10
                ),
                itemCount: 9,
                itemBuilder: (context, index) => _buildLibroItem(portadas[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLibroItem(String url) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: Image.network(url, fit: BoxFit.cover, width: double.infinity, height: double.infinity),
        ),
        Positioned(
          bottom: 0, 
          left: 0, 
          child: Container(height: 3, width: 30, color: const Color.fromARGB(255, 241, 143, 192))
        ),
        const Positioned(
          bottom: 2, 
          right: 2, 
          child: Icon(Icons.cloud_download_outlined, color: Colors.white, size: 18)
        ),
      ],
    );
  }
}