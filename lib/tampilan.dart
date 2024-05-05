import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewa_mobil/mobil.dart'; // mengimpor file mobil.dart yang berisi definisi widget MobilTs

class Tampilanmobil extends StatelessWidget { // widget yang digunakan untuk menampilkan daftar mobil yang tersedia
  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget Scaffold digunakan untuk memberikan tata letak tampilan ketika user klik "Cari" pada tampilan awal aplikasi
      appBar: AppBar( // widget unutk memberikan tampilan pada bagian atas konten ketika aplikasi di klik
        backgroundColor: Colors.blue,
        title: Text("Ayo Travelling"), // memberikan judul halaman
        centerTitle: true, // memusatkan judul
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0), // Padding di sekitar teks
          ),
          Text(
            '  Mobil Tersedia', // memberikan teks "Mobil Tersedia" dengan gaya dan ukuran teks tebal
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0), // Padding di sekitar widget MobilTs
            child: MobilTs(), // menampilkan widget MobilTs yang menampilkan daftar mobil
          ),
        ],
      ),
    );
  }
}