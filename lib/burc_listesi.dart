import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_item.dart';
import 'package:flutter_burc_rehberi/model/burc.dart';
import 'package:flutter_burc_rehberi/strings.dart';

class BurcListesi extends StatelessWidget {
  late final List<Burc> tumBurclar;

  BurcListesi() {
    tumBurclar = veriKaynagiHazirla();
  }

  List<Burc> veriKaynagiHazirla() {
    List<Burc> gecici = [];
    for (var i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarihi = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
      //burç resimlerini oluşturmak için
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      var burcBuyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      Burc eklenecekBurc =
          Burc(burcAdi, burcTarihi, burcDetay, burcKucukResim, burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Burç listesi"),
      ),
      body: Center(
        child: ListView.builder(
            itemBuilder: (context, index) {
              return BurcItem(listelenenBurc: tumBurclar[index],);
            },
            itemCount: tumBurclar.length),
      ),
    );
  }
}
