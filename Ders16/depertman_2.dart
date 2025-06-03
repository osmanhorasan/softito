void main(List<String> args) {
  Departman muhasebe = Muhasebe(
    1,
    'Muhasebe',
    10,
    '123-456-7890',
    'Ali Veli',
    5000.0,
    5,
    100000.0,
    50000.0,
  );

  Departman uretim = Uretim(
    2,
    'Üretim',
    20,
    '098-765-4321',
    3,
    10000,
  );

  Departman uretim2 = Uretim(
    3,
    'Üretim 2',
    15,
    '111-222-3333',
    4,
    15000,
  );

  departmanBilgisiVer(muhasebe);
  departmanBilgisiVer(uretim);
  departmanBilgisiVer(uretim2);
}

void departmanBilgisiVer(Departman departman) {
  print('\n=== ${departman.departmanAdi} Departmanı Bilgileri ===');
  print(departman);
  print('==========================================\n');
}

class Departman {
  int departmanId;
  String departmanAdi;
  int departmanCalisanSayisi;
  String departmanTelNo;

  Departman(
    this.departmanId,
    this.departmanAdi,
    this.departmanCalisanSayisi,
    this.departmanTelNo,
  );

  @override
  String toString() {
    return 'Departman ID: $departmanId, Adı: $departmanAdi, Çalışan Sayısı: $departmanCalisanSayisi, Telefon No: $departmanTelNo';
  }
}

class Muhasebe extends Departman {
  String adSoyad;
  double maas;
  int calismaYili;
  double yillikGelir;
  double yillikGider;

  Muhasebe(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
    this.adSoyad,
    this.maas,
    this.calismaYili,
    this.yillikGelir,
    this.yillikGider,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);

  double yillikKazanc() {
    return (yillikGelir - yillikGider).toDouble();
  }

  @override
  String toString() {
    return super.toString() +
        ', Ad Soyad: $adSoyad, Maaş: $maas, Çalışma Yılı: $calismaYili, Yıllık Gelir: $yillikGelir, Yıllık Gider: $yillikGider, Yıllık Kazanç: ${yillikKazanc()}';
  }

  // Add specific functions for Muhasebe department here.
}

class Uretim extends Departman {
  int calismaYili;
  int yillikUretimAdeti;

  Uretim(
    int departmanId,
    String departmanAdi,
    int departmanCalisanSayisi,
    String departmanTelNo,
    this.calismaYili,
    this.yillikUretimAdeti,
  ) : super(departmanId, departmanAdi, departmanCalisanSayisi, departmanTelNo);

  int getYillikUretimAdeti() {
    return yillikUretimAdeti;
  }

  @override
  String toString() {
    return super.toString() +
        ', Çalışma Yılı: $calismaYili, Yıllık Üretim Adeti: $yillikUretimAdeti';
  }

  // Add specific functions for Uretim department here.
}
