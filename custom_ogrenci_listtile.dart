import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sinif_listesi/ogrenci.dart';
import 'package:sinif_listesi/ogrenci_detay.dart';

class custom_listtile extends StatelessWidget {
  const custom_listtile({super.key, required this.ogrenci});
  final Ogrenci ogrenci;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Color.fromARGB(255, 213, 146, 224),
        child: ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ogrenci_detay(ogrenci: ogrenci),
                ));
          },
          textColor: Colors.white,
          leading: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 76, 72, 128),
            child: Text(ogrenci.numara.toString()),
          ),
          title: Text(ogrenci.adsoyad),
          trailing:
              Chip(label: Text('${ogrenci.sinif.toString()}/${ogrenci.sube}')),
        ),
      ),
    );
  }
}
