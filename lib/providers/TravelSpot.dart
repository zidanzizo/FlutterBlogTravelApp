import 'package:flutter/material.dart';

class ImageSpot {
  final String image;

  ImageSpot({
    @required this.image,
  });
}

class TravelSpot {
  final String judul;
  final String deskripsi;
  final String lokasi;
  final List<ImageSpot> gambar;

  TravelSpot({
    @required this.judul,
    @required this.deskripsi,
    @required this.lokasi,
    @required this.gambar,
  });
}
