import 'package:flutter/material.dart';
import 'package:sewa_mobil/detail_mobil.dart';
import 'spek_mobil.dart';

class MobilTs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: ScrollPhysics(), // physics untuk memberikan GridView tanpa efek scroll
      shrinkWrap: true, // memungkinkan widget untuk dikemas menjadi ruang yang lebih kecil
      itemCount: allCars.cars.length, // definisi untuk jumlah item dalam GridView
      itemBuilder: (ctx, i) => Padding( // widget pembuat item untuk GridView
        padding: const EdgeInsets.all(8.0), // Padding untuk setiap item
        child: GestureDetector( // widget detektor ketukan untuk menangani aksi ketukan
          onTap: () { // aksi ketika item di ketuk uleh user
            Navigator.of(context).push(MaterialPageRoute( // menavigasiavigasi ke halaman DetailMobil saat item di ketuk
              builder: (ctx) => DetailMobil(
                nama: allCars.cars[i].nama, // nama mobil yang dipilih oleh user
                brand: allCars.cars[i].brand, // merek mobil yang dipilih oleh user
                bensin: allCars.cars[i].bensin, // jenis bensin mobil yang dipilih oleh user
                harga: allCars.cars[i].harga, // harga sewa mobil per hari oleh user
                path: allCars.cars[i].path, // path yang mengambil gambar mobil oleh user
                transmisi: allCars.cars[i].transmisi, // jenis transmisi mobil oleh user
                warna: allCars.cars[i].warna, // warna mobil oleh user
              ),
            ),
            );
          },
          child: Container( // widget container untuk setiap item
              margin: EdgeInsets.only(
                  top: i.isEven ? 0 : 10, bottom: i.isEven ? 10 : 0), // Margin untuk setiap item
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor, // warna background container
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26, blurRadius: 5, spreadRadius: 1) // memberikan efek bayangan container
                  ]),
              child: Column( // widget kolom untuk menampilkan konten item
                children: [
                  Hero(
                      tag: allCars.cars[i].nama, // Tag Hero untuk efek hero animation
                      child: Image.asset(allCars.cars[i].path)), // Gambar mobil
                  Text(
                    allCars.cars[i].nama, // nama mobil
                    style: TextStyle(fontSize: 18, // memberikan gaya teks nama mobil
                    ),
                  ),
                  Text((allCars.cars[i].harga).toString(), // harga sewa mobil
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), // memberikan gaya teks harga sewa mobil
                  ),
                  Text(
                    '*per hari', // teks penjelasan harga sewa per hari
                    style: TextStyle(
                      fontSize: 14, // memberikan ukuran dan gaya teks penjelasan
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              )),
        ),
      ),
      gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), // digunakan untuk mengatur tata letak GridView
    );
  }
}