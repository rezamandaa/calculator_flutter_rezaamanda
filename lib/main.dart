import 'package:flutter/material.dart';

main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    // ignore: unnecessary_const
    home: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? bil1 = 0;
  int? bil2 = 0;
  int? hasil = 0;

  void kali() {
    setState(() {
      bil1 = int.parse(controller1.text);
      bil2 = int.parse(controller2.text);
      hasil = bil1! * bil2!;
    });
  }

  void bagi() {
    setState(() {
      bil1 = int.parse(controller1.text);
      bil2 = int.parse(controller2.text);
      hasil = bil1! ~/ bil2!;
    });
  }

  void kurang() {
    setState(() {
      bil1 = int.parse(controller1.text);
      bil2 = int.parse(controller2.text);
      hasil = bil1! - bil2!;
    });
  }

  void tambah() {
    setState(() {
      bil1 = int.parse(controller1.text);
      bil2 = int.parse(controller2.text);
      hasil = bil1! + bil2!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator Flutter"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: Text(
                "Hasil Perhitungan : $hasil ",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                width: 328,
                height: 40,
                child: TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                      fillColor: Colors.deepPurple[50],
                      filled: true,
                      labelText: "Input pertama",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6))),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
              width: 10,
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(bottom: 20, right: 20, left: 20),
                width: 328,
                height: 40,
                child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                    fillColor: Colors.deepPurple[50],
                    filled: true,
                    labelText: "Input Kedua",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      minimumSize: const Size(138, 50),
                    ),
                    onPressed: () {
                      kali();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text("X")),
                const SizedBox(
                  height: 42,
                  width: 42,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      bagi();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text("/")),
              ],
            ),
            const SizedBox(
              height: 8,
              width: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      tambah();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text("+")),
                const SizedBox(
                  height: 42,
                  width: 42,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        minimumSize: const Size(138, 50)),
                    onPressed: () {
                      kurang();
                      controller1.clear();
                      controller2.clear();
                    },
                    child: const Text("-")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
