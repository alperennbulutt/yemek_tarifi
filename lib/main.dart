// ignore_for_file: sort_child_properties_last, avoid_print, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          "Yemek Tarifi",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenisligi,
              child: Image.asset("assets/yemekresim.jpeg"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("Beğenildi");
                      },
                      child: Yazi(
                        "Beğen",
                        ekranGenisligi / 25,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: TextButton(
                      onPressed: () {
                        print("Yorum Yapıldı");
                      },
                      child: Yazi(
                        "Yorum Yap",
                        ekranGenisligi / 25,
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Köfte",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi(
                          "Izgara Üzerinde Pişirme Uygun", ekranGenisligi / 25),
                      const Spacer(),
                      Yazi("8 Ağustos", ekranGenisligi / 25)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Yazi(
                  "Az malzemeli, yapması kolay, lezzetli mi lezzetli bir köfte tarifim var. İçinde köfte benim işim diyenlerin bilmediği küçük sırlar, püf noktaları ile bugüne kadar yiyeceğiniz en güzel köfte tarifini yapmaya hazır mısınız? Az malzemeli, yapması kolay, lezzetli mi lezzetli bir köfte tarifim var. İçinde köfte benim işim diyenlerin bilmediği küçük sırlar, püf noktaları ile bugüne kadar yiyeceğiniz en güzel köfte tarifini yapmaya hazır mısınız?",
                  ekranGenisligi / 25),
            )
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  String icerik;
  double yaziBoyut;

  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziBoyut, color: Colors.black),
    );
  }
}
