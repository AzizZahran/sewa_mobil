import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold( // widget Scaffold digunakan untuk memberikan tata letak tampilan profil ketika user klik ikon profil pada tampilan awal
      appBar: new AppBar( // widget AppBar unutk memberikan tampilan pada bagian atas konten ketika aplikasi di klik
        title: new Text('Profil Saya'), // udul AppBar
        centerTitle: true, // memusatkan judul di tengah
        backgroundColor: Colors.blue, // memberikan warna biru pada background AppBar
      ),
      body: ListView( // widget ListView digunakan untuk menampilkan konten dalam bentuk daftar gulir
        children: <Widget>[
          Container( // widget Container unutk memberikan tampilan profil
            color: Colors.lightBlueAccent, // memberikan warna latar belakang container
            child: Stack( // widget Stack digunakan untuk menumpuk widget di atas satu sama lain
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 40), // Padding di bagian atas stack
                  child: Align(
                    alignment: Alignment.topCenter, // penempatan widget ke tengah atas
                    child: Container(
                      height: 200, // tinggi container
                      width: 200, // lebar container
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100), // memberntuk border container
                        image: DecorationImage(
                            image: AssetImage('foto/20220713_091929.jpg'), // gambar profil dari direktori
                            fit: BoxFit.cover // menyesuaikan gambar ke dalam container
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container( // widget Container unutk memberikan tampilan identitas user
            child: Column( // widget Column digunakan untuk menempatkan widget dalam satu kolom
              children: <Widget>[
                SizedBox(height: 20), // memberikan spasi kosong vertikal
                Text('Muhammad Aziz Zahran Ramadhan', // teks nama user
                  style: TextStyle(
                    fontSize: 20, // memberikan ukuran, ketebalan, dan warna teks
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                Row( // widget Row digunakan untuk menempatkan teks nomor identitas di bawah nama user
                  mainAxisAlignment: MainAxisAlignment.center, // menempatkan teks ke tengah
                  children: <Widget>[
                    Text('215410064', // teks nomor identitas user
                      style: TextStyle(
                          fontSize: 15, // memberikan ukuran teks dan warna teks dengan opacity
                          color: Colors.amber.withOpacity(0.8)
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container( // widget Container unutk memberikan tampilan ikon dari alamat user
            padding: EdgeInsets.only(top: 60, right: 50, left: 50), // menuliskan padding di sekitar widget
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0), // Padding di sekitar baris widget
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween, // penempatan widget di ruang kosong antara
                    children: <Widget>[
                      Container( // widget Container unutk memberikan tampilan dengan menggabungkan beberapa widget lain
                        height: 105, // tinggi container
                        width: 100, // lebar container
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black), // memberikan garis tepi container
                          borderRadius: BorderRadius.circular(20), // membuat bentuk border container
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0), // membuat padding di dalam container
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.home, color: Colors.grey, size: 58), // memberikan ikon rumah
                              Text('Bantul', style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container( // widget Container unutk memberikan tampilan ikon dari WA user
                        height: 105,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.phone_android, color: Colors.grey, size: 58), // memberikan ikon hp dengan gaya android
                              Text('Wa', style: TextStyle(color: Colors.black45,
                                  fontWeight: FontWeight.bold
                              ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}