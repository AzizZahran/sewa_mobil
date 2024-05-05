import 'package:flutter/material.dart';

class CarItem { // class unutk merepresentasikan detail mobil
  final String nama; // nama mobil
  final int harga; // harga sewa mobil
  final String path; // path/direktori gambar mobil
  final String warna; // warna mobil
  final String transmisi; // jenis transmisi mobil
  final String bensin; // kapasitas tangki bensin mobil
  final String brand; // merek mobil

  CarItem( // konstruktor yang digunakan untuk inisialisasi objek mobil
      {required this.nama,
        required this.harga,
        required this.path,
        required this.warna,
        required this.transmisi,
        required this.bensin,
        required this.brand});
}

CarsList allCars = CarsList(cars: [ // membuat objek-objek yang berisi daftar mobil dengan masing-masing detail
  CarItem(
      nama: 'Toyota Agya',
      harga: 450000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '30L',
      brand: 'Toyota',
      path: 'foto/mobil/agya.jpg'),
  CarItem(
      nama: 'All New Avanza',
      harga: 550000,
      warna: 'Abu-Abu',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Toyota',
      path: 'foto/mobil/avanza.jpg'),
  CarItem(
      nama: 'All New Calya',
      harga: 500000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '33L',
      brand: 'Toyota',
      path: 'foto/mobil/calya.jpg'),
  CarItem(
      nama: 'Honda CRV',
      harga: 650000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Honda',
      path: 'foto/mobil/crv.jpg'),
  CarItem(
      nama: 'Toyota Fortuner TRD',
      harga: 750000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '45L',
      brand: 'Toyota',
      path: 'foto/mobil/fortuner.jpg'),
  CarItem(
      nama: 'All New HRV',
      harga: 600000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '39L',
      brand: 'Honda',
      path: 'foto/mobil/hrv.jpg'),
  CarItem(
      nama: 'Mitsubishi Pajero Sport',
      harga: 750000,
      warna: 'Hitam',
      transmisi: '5 speed',
      bensin: '45L',
      brand: 'Mitsubishi',
      path: 'foto/mobil/pajero.jpg'),
  CarItem(
      nama: 'Toyota Innova Reborn',
      harga: 600000,
      warna: 'Merah',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Toyota',
      path: 'foto/mobil/reborn.jpg'),
  CarItem(
      nama: 'Hyundai Stargazer',
      harga: 550000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '35L',
      brand: 'Hyundai',
      path: 'foto/mobil/stargazer.jpg'),
  CarItem(
      nama: 'All New Xenia',
      harga: 550000,
      warna: 'Putih',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Daihatsu',
      path: 'foto/mobil/xenia.jpg'),
  CarItem(
      nama: 'Mitsubishi Xpander',
      harga: 600000,
      warna: 'Abu-Abu',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Mitsubishi',
      path: 'foto/mobil/xpander.jpg'),
  CarItem(
      nama: 'All New Innova Zenix',
      harga: 700000,
      warna: 'Hitam',
      transmisi: '5 speed',
      bensin: '40L',
      brand: 'Toyota',
      path: 'foto/mobil/zenix.jpg'),
  CarItem(
      nama: 'Toyota Hiace 13 Seater',
      harga: 850000,
      warna: 'Putih',
      transmisi: '6 speed',
      bensin: '60L',
      brand: 'Toyota',
      path: 'foto/mobil/hiace.jpg')
]);

class CarsList { // class yang berisi list mobil
  List<CarItem> cars;
  CarsList({required this.cars});  // konstruktor yang digunakan untuk inisialisasi objek list mobil
}