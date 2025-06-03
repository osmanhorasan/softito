import 'dart:io';
import 'dart:math' as Match;

void main(List<String> args) {
  while (true) {
    print("Lütfen bir şekil seçin:");
    print("1. Daire");
    print("2. Üçgen");
    print("3. Eskenar Üçgen");
    print("4. Paralel Kenar");
    print("5. Çıkış");

    String? secim = stdin.readLineSync();

    switch (secim) {
      case '1':
        print("Lütfen dairenin yarıçapını girin:");
        int? yaricap = int.tryParse(stdin.readLineSync() ?? '');
        if (yaricap == null || yaricap <= 0) {
          print("Geçersiz yarıçap değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        Daire daire = Daire(yaricap.toDouble());
        print("Dairenin Yarıçapı: $yaricap");
        print("Dairenin Alanı: ${daire.alanHesapla()}");
        print("Dairenin Çevresi: ${daire.cevreHesapla()}");
        break;
      case '2':
        print("Lütfen üçgenin taban ve yüksekliğini girin:");
        print("Taban uzunluğunu girin:");
        double? taban = double.tryParse(stdin.readLineSync() ?? '');
        if (taban == null || taban <= 0) {
          print("Geçersiz taban değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        print("Yüksekliği girin:");
        double? yukseklik = double.tryParse(stdin.readLineSync() ?? '');
        if (yukseklik == null || yukseklik <= 0) {
          print("Geçersiz yükseklik değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        Ucgen ucgen = Ucgen(taban, yukseklik);
        print("Üçgenin Tabanı: $taban, Yüksekliği: $yukseklik");
        print("Üçgenin Alanı: ${ucgen.alanHesapla()}");
        print("Üçgenin Çevresi: ${ucgen.cevreHesapla()}");
        break;
      case '3':
        print("Lütfen eskenar üçgenin kenar uzunluğunu girin:");
        double? kenar = double.tryParse(stdin.readLineSync() ?? '');
        if (kenar == null || kenar <= 0) {
          print("Geçersiz kenar değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        EskenarUcgen eskenarUcgen = EskenarUcgen(kenar);
        print("Eskenar Üçgenin Kenar Uzunluğu: $kenar");
        print("Eskenar Üçgenin Alanı: ${eskenarUcgen.alanHesapla()}");
        print("Eskenar Üçgenin Çevresi: ${eskenarUcgen.cevreHesapla()}");
        break;
      case '4':
        print("Lütfen paralel kenarın kısa ve uzun kenarlarını girin:");
        print("Kısa kenar uzunluğunu girin:");
        double? kisaKenar = double.tryParse(stdin.readLineSync() ?? '');
        if (kisaKenar == null || kisaKenar <= 0) {
          print("Geçersiz kısa kenar değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        print("Uzun kenar uzunluğunu girin:");
        double? uzunKenar = double.tryParse(stdin.readLineSync() ?? '');
        if (uzunKenar == null || uzunKenar <= 0) {
          print("Geçersiz uzun kenar değeri. Lütfen pozitif bir sayı girin.");
          continue;
        }
        ParalelKenar paralelKenar = ParalelKenar(kisaKenar, uzunKenar);
        print("Paralel Kenarın Kısa Kenarı: $kisaKenar, Uzun Kenarı: $uzunKenar");
        print("Paralel Kenarın Alanı: ${paralelKenar.alanHesapla()}");
        print("Paralel Kenarın Çevresi: ${paralelKenar.cevreHesapla()}");
        break;
      case '5':
        return;
      default:
        print("Geçersiz seçim, lütfen tekrar deneyin.");
    }
  }
}

abstract class Sekil {
  double alan = 0;
  double cevre = 0;

  Sekil(this.alan, this.cevre);

  double alanHesapla();
  double cevreHesapla();

  @override
  String toString() {
    return "Alan: $alan, Çevre: $cevre";
  }
}

class Daire extends Sekil {
  double yaricap;

  Daire(this.yaricap) : super(0, 0);

  @override
  double alanHesapla() {
    return 3.14 * yaricap * yaricap;
  }

  @override
  double cevreHesapla() {
    return 2 * 3.14 * yaricap;
  }

  @override
  String toString() {
    return "Daire - Alan: ${alanHesapla()}, Çevre: ${cevreHesapla()}";
  }
}

class Ucgen extends Sekil {
  double taban;
  double yukseklik;

  Ucgen(this.taban, this.yukseklik) : super(0, 0);

  @override
  double alanHesapla() {
    return (taban * yukseklik) / 2;
  }

  @override
  double cevreHesapla() {
    // Üçgenin çevresi için kenar uzunluklarını bilmemiz gerekir.
    // Bu örnekte basitlik için sadece taban ve yükseklik kullanıyoruz.
    return taban +
        yukseklik +
        (Match.sqrt((taban * taban) + (yukseklik * yukseklik)));
  }

  @override
  String toString() {
    return "Üçgen - Alan: ${alanHesapla()}, Çevre: ${cevreHesapla()}";
  }
}

class EskenarUcgen extends Ucgen {
  double kenar;

  EskenarUcgen(this.kenar) : super(kenar, (Match.sqrt(3) / 2) * kenar);

  @override
  double alanHesapla() {
    return (Match.sqrt(3) / 4) * kenar * kenar;
  }

  @override
  double cevreHesapla() {
    return 3 * kenar;
  }

  @override
  String toString() {
    return "Eskenar Üçgen - Alan: ${alanHesapla()}, Çevre: ${cevreHesapla()}";
  }
}

class ParalelKenar extends Sekil {
  double kisaKenar;
  double uzunKenar;

  ParalelKenar(this.kisaKenar, this.uzunKenar) : super(0, 0);

  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar;
  }

  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar);
  }

  @override
  String toString() {
    return "Paralel Kenar - Alan: ${alanHesapla()}, Çevre: ${cevreHesapla()}";
  }
}
