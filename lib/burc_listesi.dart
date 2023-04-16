import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/model/burc.dart';

class BurcListesi extends StatefulWidget {
 late List<Burc> tumBurclar;
  BurcListesi({super.key}) {
    tumBurclar = [];
  }

  @override
  State<BurcListesi> createState() => _BurcListesiState();
}

class _BurcListesiState extends State<BurcListesi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç listesi"),
      ),
      body: Container(
        child: Center(
          child: Text("Burçlar Listesi"),
        ),
      ),
    );
  }
}
