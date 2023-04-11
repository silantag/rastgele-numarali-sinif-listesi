import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sinif_listesi/ogrenci.dart';

class ogrenci_detay extends StatelessWidget {
  const ogrenci_detay({required this.ogrenci, super.key});
  final Ogrenci ogrenci;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ogrenci.adsoyad),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            maxRadius: 100,
          ),
          Divider(
            color: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Text("Ad soyad "), Text(ogrenci.adsoyad)],
            ),
          ),
          const Divider(
            color: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Numara "),
                Text(ogrenci.numara.toString())
              ],
            ),
          ),
          const Divider(
            color: Colors.purple,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Expanded(child: Text("Sınıf")),
                Text(ogrenci.sinif.toString()),
                Text(ogrenci.sube.toString()),
              ],
            ),
          ),
          const Divider(
            color: Colors.purple,
          ),
        ],
      ),
    );
  }
}
