import 'package:flutter/material.dart';
import 'spesifik_mobil.dart';

void _showSimpleDialog(context) { //fungsi yang digunakan untuk menampilkan dialog sederhana
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding( //padding digunakan untuk memberikan padding ke dalam konten dialog
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded( //expanded digunakan untuk memungkinkan teks memperluas sebanyak mungkin
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton( // IconButton digunakan untuk tombol close
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class DetailMobil extends StatelessWidget {
  final String nama;
  final int harga;
  final String path;
  final String warna;
  final String transmisi;
  final String bensin;
  final String brand;

  DetailMobil(   //konstruktor untuk menerima data detail mobil
      {required this.nama,
        required this.harga,
        required this.path,
        required this.warna,
        required this.transmisi,
        required this.bensin,
        required this.brand});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget Scaffold digunakan untuk memberikan tata letak tampilan ketika user klik gambar mobil yang diinginkan
      appBar: AppBar( // widget AppBar unutk memberikan tampilan pada bagian atas konten ketika aplikasi di klik
        backgroundColor: Colors.blue,
        title: Text("Ayo Travelling"), //judul AppBar
        centerTitle: true, // memusatkan judul di tengah
      ),
      body: Column(
        children: [
          Text(nama, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)), // nama mobil
          Text( // merek mobil
            brand,
            style: TextStyle(fontSize: 15), // mengatur ukuran font
          ),
          Hero(tag: nama, child: Image.asset(path)),// kode widget Hero untuk animasi gambar
          Row( // baris untuk menampilkan harga sewa untuk berbagai periode
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil( // SpesifikMobil untuk menampilkan harga
                nama: '1 hari',
                harga: harga * 1,
                spek: 'Rupiah',
              ),
              SpesifikMobil(
                nama: '2 Hari',
                harga: harga * 2,
                spek: 'Rupiah',
              ),
              SpesifikMobil(
                nama: '3 Hari',
                harga: harga * 2.8,
                spek: 'Rupiah',
              ),
              SpesifikMobil(
                nama: '5 Hari',
                harga: harga * 4.5,
                spek: 'Rupiah',
              ),
            ],
          ),
          SizedBox(height: 20), // widget SizedBox digunakan untuk memberikan jarak
          Text(
            'SPESIFIKASI',
            style: TextStyle(
                color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row( // baris untuk menampilkan spesifikasi
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SpesifikMobil(
                nama: 'Warna',
                spek: warna,
              ),
              SpesifikMobil(
                nama: 'Gearbox',
                spek: transmisi,
              ),
              SpesifikMobil(
                nama: 'Bensin',
                spek: bensin,
              )
            ],
          ),
          SizedBox(height: 15),
          ElevatedButton( // ElevatedButton digunakan untuk melakukan aksi sewa
            onPressed: (){
              _showSimpleDialog(context); // memanggil fungsi untuk menampilkan dialog
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)), backgroundColor: Colors.blueAccent,
              padding: EdgeInsets.all(10.0),
            ),
            child: Text(
              'Sewa', // memberikan teks 'Sewa' pada tombol ElevatedButton
              style: TextStyle(fontSize: 18, color: Colors.white), // mengganti ukuran dan warna teks
            ),
          )
        ],
      ),
    );
  }
}