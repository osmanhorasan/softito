class ProgramlamaDili {
  String paradigma = "Nesne Yönelimli";
  String turSistemasi = "Dinamik";
  String derleyiciYorumlayici = "Yorumlayıcı";
  bool acikKaynak = true;

  void kodYaz() {
    print("Programlama Dili: Kod Yazılıyor.");
  }

  void kodCalistir() {
    print("Programlama Dili: Kod Çalıştırılıyor.");
  }
}

class Dart extends ProgramlamaDili {
  Dart() {
    paradigma = "Nesne Yönelimli"; // 
    turSistemasi = "Statik";
    derleyiciYorumlayici = "Derleyici";
    acikKaynak = true;
  }

  void flutterKullan() {
    print("Dart: Flutter Kullanılıyor.");
  }

  @override
  void kodCalistir() {
    print("Dart: Kod Çalıştırılıyor.");
  }
}

class Python extends ProgramlamaDili {
  Python() {
    paradigma = "Nesne Yönelimli";
    turSistemasi = "Dinamik";
    derleyiciYorumlayici = "Yorumlayıcı";
  }

  void yapayZekaKullan() {
    print("Python: Yapay Zeka Kullanılıyor.");
  }

  @override
  void kodYaz() {
    print("Python: Kod Yazılıyor.");
  }
}

void main() {
  Dart dartDili = Dart();
  dartDili.kodYaz();
  dartDili.kodCalistir();
  dartDili.flutterKullan();

  print("\n");

  Python pythonDili = Python();
  pythonDili.kodYaz();
  pythonDili.kodCalistir();
  pythonDili.yapayZekaKullan();
}

