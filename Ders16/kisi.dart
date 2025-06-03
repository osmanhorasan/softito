void main(List<String> args) {
   Kisi kisi = Kisi('Ali', 'Yılmaz', 30);
   Calisan calisan = Calisan('Ayşe', 'Demir', 28, 'IT', 5000);
    print(kisi);
}

class Kisi {
  String ad;
  String soyad;
  int yas;

  Kisi(this.ad, this.soyad, this.yas);

  @override
  String toString() {
    return 'Kisi(ad: $ad, soyad: $soyad, yas: $yas)';
  }
}

class Calisan extends Kisi {
  String departman;
  int maas = 0;

  Calisan(String ad, String soyad, int yas, this.departman, this.maas) : super(ad, soyad, yas);

  @override
  String toString() {
    return 'Calisan(ad: $ad, soyad: $soyad, yas: $yas, departman: $departman)';
  }
}