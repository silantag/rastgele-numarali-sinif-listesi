import 'dart:math';

import 'package:sinif_listesi/ogrenci.dart';

class veri_helper {
  static List<Ogrenci> veri_dondur() {
    List<Ogrenci> ogrenciler = [];
    List.generate(100, (index) {
      Ogrenci ogr = Ogrenci(Random().nextInt(999), "ogrenci $index",
          sinif: Random().nextInt(4) + 9, sube: index % 2 == 0 ? 'A' : 'E');
      ogrenciler.add(ogr);
    });
    return ogrenciler;
  }
}
