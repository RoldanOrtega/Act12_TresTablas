import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    const Color rosaClaro = Color.fromARGB(255, 255, 182, 193);
    const Color azulClaro = Color(0xFF80D8FF);
    const Color azulOscuro = Color(0xFF0D47A1);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text('Escribir', 
          style: TextStyle(color: azulOscuro, fontWeight: FontWeight.bold, fontSize: 24)),
        actions: [
          const Center(
            child: Text('@Andrea Roldan 6-I', style: TextStyle(color: azulClaro, fontWeight: FontWeight.w500)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CircleAvatar(
              radius: 15, 
              backgroundImage: NetworkImage('https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/refs/heads/main/PERFIL.JPG')
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF1A1A1A), 
              borderRadius: BorderRadius.circular(12), 
              border: Border.all(color: Colors.white24)
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8), 
                  child: Image.network('https://raw.githubusercontent.com/RoldanOrtega/Imagenes-Act9/refs/heads/main/l.JPG', width: 70, height: 100, fit: BoxFit.cover)
                ),
                const SizedBox(width: 15),
                const Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, 
                  children: [
                    Text('Seguir escribiendo', style: TextStyle(color: Colors.grey, fontSize: 12)),
                    Text('Hasta volver a encontrarte', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
                    SizedBox(height: 10),
                    Row(children: [
                      _Badge(text: '3 parte publicada'), 
                      SizedBox(width: 8), 
                      _Badge(text: '0 borradores')
                    ]),
                  ]
                )),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _row(Icons.menu_book, 'Editar otra historia', const Color.fromRGBO(255, 182, 193, 1), azulClaro),
          const Divider(color: Colors.white, thickness: 0.5),
          _row(Icons.add_box_outlined, 'Crear una historia nueva', rosaClaro, azulClaro),
          const Divider(color: Colors.white, thickness: 0.5),
          _row(Icons.dashboard_customize_outlined, 'Series', rosaClaro, azulClaro, hasNew: true),
          const Divider(color: Colors.white, thickness: 0.5),
          _row(Icons.import_contacts, 'Recursos útiles para escritores', rosaClaro, azulClaro),
          const Divider(color: Colors.white, thickness: 0.5),
          _row(Icons.stars_outlined, 'Programas & oportunidades en Wattpad', rosaClaro, azulClaro),
          const Divider(color: Colors.white, thickness: 0.5),
        ],
      ),
    );
  }

  Widget _row(IconData i, String t, Color c1, Color c2, {bool hasNew = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(children: [
        Icon(i, color: c1, size: 28),
        const SizedBox(width: 15),
        Text(t, style: TextStyle(color: c2, fontSize: 16)),
        if (hasNew) ...[
          const SizedBox(width: 10), 
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2), 
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(4)), 
            child: const Text('NUEVO', style: TextStyle(color: Colors.black, fontSize: 9, fontWeight: FontWeight.bold))
          )
        ]
      ]),
    );
  }
}

class _Badge extends StatelessWidget {
  final String text;
  const _Badge({required this.text});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(color: Colors.white10, borderRadius: BorderRadius.circular(4)),
      child: Text(text, style: const TextStyle(fontSize: 10, color: Colors.white70)),
    );
  }
}