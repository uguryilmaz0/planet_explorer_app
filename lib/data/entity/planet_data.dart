import 'package:flutter/material.dart';

class PlanetData {
  int id;
  String metin;
  String ad;
  String resim;
  Color renk;
  String uzaklik;
  String cap;
  String gunUzunlugu;
  String yuzeySicakligi;
  PlanetData({
    required this.id,
    required this.ad,
    required this.resim,
    required this.renk,
    required this.metin,
    required this.uzaklik,
    required this.cap,
    required this.gunUzunlugu,
    required this.yuzeySicakligi,
    });
}
