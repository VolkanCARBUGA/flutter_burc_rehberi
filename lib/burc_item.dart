import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/model/burc.dart';

class BurcItem extends StatefulWidget {
  final Burc listelenenBurc;
  const BurcItem({super.key, required this.listelenenBurc});

  @override
  State<BurcItem> createState() => _BurcItemState();
}

class _BurcItemState extends State<BurcItem> {
  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BurcDetay(secilenBurc: widget.listelenenBurc),
              ));
        },
        leading: Image.asset(
          "images/" + widget.listelenenBurc.burcKucukResim,
        ),
        title: Text(
          widget.listelenenBurc.burcAdi,
          style: myTextStyle.titleLarge,
        ),
        subtitle: Text(
          widget.listelenenBurc.burcTarihi,
          style: myTextStyle.bodyLarge,
        ),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}
