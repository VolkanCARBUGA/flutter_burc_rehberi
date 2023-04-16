import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(widget.secilenBurc.burcAdi.toUpperCase()),
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/" + widget.secilenBurc.burcBuyukResim),
            ),
          ),
          SliverToBoxAdapter(
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  color: Colors.blueAccent,
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
}
