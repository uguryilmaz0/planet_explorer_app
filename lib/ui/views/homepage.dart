import 'package:flutter/material.dart';
import 'package:planet_explorer/ui/views/planet.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text(
                "Planet Explorer",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF339FFF),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Column(
                children: [
                  Text(
                    "Güneş'in etrafında dönen tüm",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text("   gezegenleri gösteren",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      )),
                  Text(
                    "  ... bir panorama ...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 380,
              width: 360,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/homepage.jpg"),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const Planet()));
              },
              child: const Text(
                "Keşfe Başla",
                style: TextStyle(color: Colors.white, fontSize: 20,fontStyle: FontStyle.italic),
              ),
            )
          ],
        ),
      ),
      backgroundColor: const Color(0xFF020009),
    );
  }
}
