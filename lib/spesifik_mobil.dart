import 'package:flutter/material.dart';

class SpesifikMobil extends StatelessWidget { // widget yang digunakan untuk menampilkan spesifikasi mobil
  final dynamic harga; // harga spesifikasi mobil
  final dynamic nama; // nama spesifikasi mobil
  final dynamic spek; // detail spesifikasi mobil

  SpesifikMobil({this.harga, this.nama, this.spek}); // membuat konstruktor yang digunakan untuk inisialisasi objek SpesifikMobil

  @override
  Widget build(BuildContext context) {
    return Container( // widget Container unutk memberikan tampilan informasi mobil
      padding: EdgeInsets.all(8),
      height: harga == null ? 80 : 100, // menyesuaikan tinggi container berdasarkan apakah harga null atau tidak
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1), // memberikan garis tepi dengan warna abu-abu
        borderRadius: BorderRadius.circular(10), // Border radius untuk memberi sudut melengkung
      ),
      child: harga == null // kondisi jika harga null, tampilkan nama dan detail
          ? Column(
        children: [
          Text(
            nama,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 5), // memberikan spasi vertikal
          Text(
            spek.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      )
          : Column( // jika kondisi harga tidak null, tampilkan nama, harga, dan detail
        children: [
          Text(
            nama,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 5), // memberikan spasi vertikal
          Text(
            harga.toString(),
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5), // memberikan spasi vertikal
          Text(spek.toString()), // detail spesifikasi mobil
        ],
      ),
    );
  }
}