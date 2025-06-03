void main(List<String> args) {
  List<Departman> departmanlar = [];

  departmanlar.add(MuhasebeDepartman("Muhasebe A", 15, "1112223344"));
  departmanlar.add(MuhasebeDepartman("Muhasebe B", 12, "2223334455"));
  departmanlar.add(MuhasebeDepartman("Muhasebe C", 18, "3334445566"));

  departmanlar.add(UretimDepartman("Üretim X", 50, "4445556677"));
  departmanlar.add(UretimDepartman("Üretim Y", 45, "5556667788"));
  departmanlar.add(UretimDepartman("Üretim Z", 60, "6667778899"));

  printListDepartmanlar(departmanlar);
}

void printListDepartmanlar(List<Departman> departmanlar) {
  for (var departman in departmanlar) {
    printDepartman(departman);
  }
}

void printDepartman(Departman departman) {
  print(departman);
}

class Departman {
  String ad = "";
  int calisanSayisi = 0;
  String tel = "";

  Departman(this.ad, this.calisanSayisi, this.tel) {
    // Constructor
    print("Departman oluşturuldu: $ad");
  }

  void mailGonder(String mesaj) {
    print("Mail gönderildi: $mesaj");
  }

  void raporGonder() {
    print("Rapor gönderildi.");
  }

  @override
  String toString() {
    return "Departman: $ad, İşçi Sayısı: $calisanSayisi, Telefon: $tel";
  }
}

class MuhasebeDepartman extends Departman {
  MuhasebeDepartman(String ad, int calisanSayisi, String tel)
    : super(ad, calisanSayisi, tel) {
    this.ad = ad;
    this.calisanSayisi = calisanSayisi;
    this.tel = tel;
  }

  

  void faturaGonder() {
    print("Fatura gönderildi.");
  }

  void odemeAl() {
    print("Ödeme alındı.");
  }

  @override
  String toString() {
    return "Muhasebe Departmanı: $ad, İşçi Sayısı: $calisanSayisi, Telefon: $tel";
  }
}

class UretimDepartman extends Departman {
  UretimDepartman(String ad, int calisanSayisi, String tel)
    : super(ad, calisanSayisi, tel) {
    this.ad = ad;
    this.calisanSayisi = calisanSayisi;
    this.tel = tel;
  }
  void urunUret() {
    print("Ürün üretildi.");
  }

  void kaliteKontrol() {
    print("Kalite kontrol yapıldı.");
  }

  @override
  String toString() {
    return "Üretim Departmanı: $ad, İşçi Sayısı: $calisanSayisi, Telefon: $tel";
  }
}
