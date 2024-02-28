import 'package:flutter/material.dart';
import 'package:planet_explorer/data/entity/planet_data.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  PlanetData planet;
  DetailsPage({required this.planet});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF020009),
        centerTitle: true,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.redAccent,
            ),
          ),
        ),
        automaticallyImplyLeading: false,
        title: Text(
          widget.planet.ad,
          style: const TextStyle(
              color: Colors.blue, fontSize: 28, fontWeight: FontWeight.bold),
        ),
      ),
      body: Expanded(
        child: ListView(
          children: [
            SizedBox(
              height: 370,
              width: 350,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/${widget.planet.resim}")),
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gezegenin Adı : ${widget.planet.ad} ",
                      style: const TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Gezegenin Açıklaması : ${widget.planet.metin} ",
                  style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gezegenin Uzaklığı : ${widget.planet.uzaklik} ",
                      style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gezegenin Çapı : ${widget.planet.cap} ",
                      style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Gezegenin Yüzey Sıcaklığı : ${widget.planet.yuzeySicakligi} ",
                    style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                ),
                const Divider(color: Colors.grey,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Gezegenin Gün Uzunluğu : ${widget.planet.gunUzunlugu} ",
                      style: const TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                const Divider(color: Colors.grey,),
              ],
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFF020009),
    );
  }
}
