import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sewa_mobil/profil.dart';
import 'tampilan.dart';

void main() {
  runApp(
    MaterialApp(
      home: Home(), // menentukan widget Home sebagai halaman utama
      routes: <String, WidgetBuilder>{
        '/page1' : (BuildContext context) => Home(), // menentukan rute '/page1' untuk Home
        '/page2' : (BuildContext context) => MyProfil(), // menentukan rute '/page2' untuk MyProfil
        '/page3' : (BuildContext context) => Tampilanmobil(), // menentukan rute '/page3' untuk Tampilanmobil
      },
    ),
  );
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget Scaffold digunakan untuk memberikan tata letak tampilan awal aplikasi
      appBar: AppBar( // widget AppBar unutk memberikan tampilan pada bagian atas konten ketika aplikasi di klik
        title: Text('Ayo Travelling'), // judul AppBar
        centerTitle: true, // memusatkan judul
        backgroundColor: Colors.lightBlue, // warna latar belakang AppBar
        actions: <Widget>[ // memberikan widget di sebelah kanan AppBar
          IconButton(
            icon: Icon(Icons.person_outline), // Icon untuk menavigasi ke profil
            onPressed: (){
              Navigator.pushNamed(context, '/page2'); // menavigasi ke halaman profil saat tombol ditekan
            },
          )
        ],
      ),
      body: SingleChildScrollView( // widget untuk membuat halaman dapat di-scroll
        child: Column(
          children: <Widget>[
            Container( // widget Container unutk memberikan tampilan foto pada tampilan awal
              child: Image.asset(
                'foto/base.jpg', // gambar untuk ditampilkan
                fit: BoxFit.fitWidth, // mengatur gambar yang ditampilkan
              ),
            ),
            Container( // widget Container unutk memberikan tampilan yang user dapat menginputkan lokasi tempat
              padding: EdgeInsets.all(50.0), // Padding untuk kotak input
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Masukan Lokasi Anda Sekarang', // petunjuk untuk user menginput teks lokasi
                    ),
                  ),
                ],
              ),
            ),
            Container( // widget Container unutk memberikan tampilan tombol yang dapat diklik dan menavigasikan aplikasi
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 20), // margin untuk tombol
              child: ElevatedButton( // widget ElevatedButton untuk membuat tombol
                onPressed: (){
                  var route = MaterialPageRoute(builder: (context)=> Tampilanmobil(),); // membuat rute untuk menavigasi ke Tampilanmobil
                  Navigator.of(context).push(route); // menavigasi ke halaman Tampilanmobil saat tombol ditekan
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(10.0), backgroundColor: Colors.blueAccent, // mengatur padding dan warna tombol
                  textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold), // memberikan teks pada tombol
                ),
                child: Text('Cari'), // memberikan teks 'Cari' pada tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}