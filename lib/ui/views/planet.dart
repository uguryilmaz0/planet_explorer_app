import 'package:flutter/material.dart';
import 'package:planet_explorer/data/entity/planet_data.dart';
import 'package:planet_explorer/ui/views/details_page.dart';

class Planet extends StatefulWidget {
  const Planet({super.key});

  @override
  State<Planet> createState() => _PlanetState();
}
class _PlanetState extends State<Planet> {
  
  Future<List<PlanetData>> gezegenleri_yukle() async {
    var gezegenlerListesi = <PlanetData>[];
    var g1 = PlanetData(
        id: 1, 
        ad: "Dünya", 
        resim: "dunya.jpg", 
        renk: Colors.redAccent,
        metin: "Suyun ve yaşamın bulunduğu tek bilinen gezegen.",
        uzaklik: "149.6 milyon km",
        cap: "12,742 km",
        gunUzunlugu: "24 saat",
        yuzeySicakligi: "-88 ila 58 °C arası",
        );
    var g2 = PlanetData(
        id: 2,
        ad: "Jüpiter",
        resim: "jupiter.jpg",
        renk: Colors.yellow,
        metin: "Güneş Sistemi'ndeki en büyük gezegen, dev bir gaz gezegeni.",
        uzaklik: "778.5 milyon km",
        cap: "139,820 km",
        gunUzunlugu: "9.9 saat",
        yuzeySicakligi: "-145 °C",
        );
    var g3 =
        PlanetData(
          id: 3, 
          ad: "Mars", 
          resim: "mars.jpg", 
          renk: Colors.blue,
          metin: "Kızıl gezegen olarak bilinir ve potansiyel olarak yaşam barındırabileceği düşünülmektedir.",
          uzaklik: "227.9 milyon km",
          cap: "6,779 km",
          gunUzunlugu: "24.6 saat",
          yuzeySicakligi: "-140 ila 20 °C arası",
          );
    var g4 = PlanetData(
        id: 4, 
        ad: "Merkür", 
        resim: "mercury.jpg", 
        renk: Colors.cyan,
        metin: "Güneş Sistemi'ndeki en küçük gezegen ve Güneş'e en yakın olanıdır.",
        uzaklik: "57.9 milyon km",
        cap: "4,880 km",
        gunUzunlugu: "58.6 gün",
        yuzeySicakligi: "-173 ila 427 °C arası",
        );
    var g5 = PlanetData(
        id: 5, 
        ad: "Neptün", 
        resim: "neptun.jpg", 
        renk: Colors.pinkAccent,
        metin: "Rüzgarlarla kaplı, soğuk ve mavi renkli bir buz ve gaz devi.",
        uzaklik: "4.5 milyar km",
        cap: "49,244 km",
        gunUzunlugu: "16.1 saat",
        yuzeySicakligi: "-214 °C",
        );
    var g6 = PlanetData(
        id: 6, 
        ad: "Satürn", 
        resim: "saturn.jpg", 
        renk: Colors.purpleAccent,
        metin: "Halkaları ile tanınan, büyük ve halkalı bir gaz gezegen.",
        uzaklik: "1.4 milyar km",
        cap: "116,460 km",
        gunUzunlugu: "10.7 saat",
        yuzeySicakligi: "-178 °C",);
    var g7 = PlanetData(
        id: 7, 
        ad: "Uranüs", 
        resim: "uranus.jpg", 
        renk: Colors.greenAccent,
        metin: " Eğik dönme ekseni ile dikkat çeken bir buz ve gaz devi.",
        uzaklik: "2.9 milyar km",
        cap: "50,724 km",
        gunUzunlugu: "17.2 saat",
        yuzeySicakligi: "-224 °C",);
    var g8 =
        PlanetData(
          id: 1, 
          ad: "Venüs", 
          resim: "venus.jpg",
          renk: Colors.orange,
          metin: "Yoğun atmosferi ve sıcak yüzeyi ile bilinen ikinci gezegen.",
          uzaklik: "108.2 milyon km",
          cap: "12,104 km",
          gunUzunlugu: "116 gün",
          yuzeySicakligi: "Ortalama 465 °C",
          );

    gezegenlerListesi.add(g1);
    gezegenlerListesi.add(g2);
    gezegenlerListesi.add(g3);
    gezegenlerListesi.add(g4);
    gezegenlerListesi.add(g5);
    gezegenlerListesi.add(g6);
    gezegenlerListesi.add(g7);
    gezegenlerListesi.add(g8);
    return gezegenlerListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF020009),
        centerTitle: true,
        title: const Text(
          "Planets",
          style: TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: FutureBuilder(
          future: gezegenleri_yukle(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var gezegenlerListesi = snapshot.data;
              return GridView.builder(
                  itemCount: gezegenlerListesi!.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 0.8 / 0.8),
                  itemBuilder: (context, index) {
                    var gezegen = gezegenlerListesi[index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(
                              planet: gezegen,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Card(
                          color: gezegen.renk,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      gezegen.ad,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                )
                              ]),
                        ),
                      ),
                    );
                  });
            } else {
              return Center();
            }
          }),
      backgroundColor: const Color(0xFF020009),
    );
  }
}
