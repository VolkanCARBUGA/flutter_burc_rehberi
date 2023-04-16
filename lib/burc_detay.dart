import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

import 'model/burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appBarRengi = Colors.pink;
  late PaletteGenerator paletGenerator;
  @override
  void initState() {
    super.initState();
    appBarRenkBul();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: appBarRengi,
            title: Text(widget.secilenBurc.burcAdi.toUpperCase()),
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset("images/" + widget.secilenBurc.burcBuyukResim),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  color:appBarRengi,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0)),
                  child: Column(
                    children: [
                      Text(
                        widget.secilenBurc.burcAdi,
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      Text(
                        widget.secilenBurc.burcTarihi,
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                      Text(
                        widget.secilenBurc.burcDetay,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appBarRenkBul() async {
    paletGenerator = await PaletteGenerator.fromImageProvider(
        AssetImage("images/${widget.secilenBurc.burcBuyukResim}"));
    appBarRengi = paletGenerator.dominantColor!.color;
    setState(() {
      
    });
  }
}
