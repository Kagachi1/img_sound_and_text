import 'package:flutter/material.dart';
import 'package:img_sound_and_text/image_text_sound.dart';
import 'package:img_sound_and_text/nilai_akhir.dart'; // Sesuaikan dengan nama proyek dan lokasi file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projek Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Home'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Tugas Gambar dan Suara'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImageToTextAndSound()),
              );
            },
          ),
          ListTile(
            title: Text('Nilai Akhir'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TugasAkhirScreen()),
              );
            },
          ),
          // Tambahkan list lainnya di sini jika diperlukan
        ],
      ),
    );
  }
}
