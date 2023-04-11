import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sinif_listesi/custom_ogrenci_listtile.dart';
import 'package:sinif_listesi/ogrenci.dart';
import 'package:sinif_listesi/veri_helper.dart';

class homepage extends StatefulWidget {
  const homepage({super.key, required this.title});
  final String title;
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  List<Ogrenci> ogrencilerin_listesi = [];
  void initState() {
    ogrencilerin_listesi = veri_helper.veri_dondur();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.green,
                elevation: 8,
                child: Text(widget.title),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: ogrencilerin_listesi.length,
              itemBuilder: (context, index) =>
                  custom_listtile(ogrenci: ogrencilerin_listesi[index]),
            ))
          ],
        ),
      )),
    );
  }
}
