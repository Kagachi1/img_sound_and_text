import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nilai Akhir',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TugasAkhirScreen(),
    );
  }
}

class TugasAkhirScreen extends StatefulWidget {
  @override
  _TugasAkhirScreenState createState() => _TugasAkhirScreenState();
}

class _TugasAkhirScreenState extends State<TugasAkhirScreen> {
  TextEditingController nilai1Controller = TextEditingController();
  TextEditingController nilai2Controller = TextEditingController();
  TextEditingController nilai3Controller = TextEditingController();

  double rataRata = 0;

  String getStatus() {
    if (rataRata >= 75) {
      return 'Lulus';
    } else {
      return 'Tidak Lulus';
    }
  }

  void hitungRataRata() {
    double nilai1 = double.tryParse(nilai1Controller.text) ?? 0;
    double nilai2 = double.tryParse(nilai2Controller.text) ?? 0;
    double nilai3 = double.tryParse(nilai3Controller.text) ?? 0;

    double total = nilai1 + nilai2 + nilai3;
    setState(() {
      rataRata = total / 3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Nilai Akhir',
          style: TextStyle(
              color: Colors.blue), // Ubah warna teks header menjadi biru
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Keterangan: ${getStatus()}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            TextField(
              controller: nilai1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nilai 1'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nilai2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nilai 2'),
            ),
            SizedBox(height: 10),
            TextField(
              controller: nilai3Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Nilai 3'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                hitungRataRata();
              },
              child: Text('Hitung Rata-Rata'),
            ),
            SizedBox(height: 20),
            Text(
              'Rata-Rata Nilai: ${rataRata.toStringAsFixed(2)}',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
