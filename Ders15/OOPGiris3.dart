// import 'musteri.dart';
//import 'cember_daire.dart';


import 'dart:io';
//import 'dart:math';

import 'kullanici.dart';
//import 'ogrenci.dart';

void main(List<String> args) {
  start(); // Programı başlatmak için start fonksiyonunu çağırıyoruz


  // Musteri m1 = Musteri(-1);
  // m1.musteriBilgisiYazdir(); // Burada Musteri ID: 0 yazdırılacak
  // Musteri m2 = Musteri(2);
  // m2.musteriBilgisiYazdir(); // Burada Musteri ID: 2 yazdırılacak
  // m2.id = 5; // Geçersiz ID, hiçbir şey olmayacak
  // m2.musteriBilgisiYazdir(); // Burada Musteri ID: 2 yazdırılacak
  // m2.id = 3; // Geçersiz ID, hiçbir şey olmayacak
  // m2.musteriBilgisiYazdir(); // Burada Musteri ID: 2 
  
  // CemberDaire c1 = CemberDaire(5);
  // print("Çemberin çevresi: ${c1.cevreHesapla()}"); // Çemberin çevresi: 31.400000000000002
  // print("Dairenin alanı: ${c1.alanHesapla()}"); // Dairenin alanı: 78.5
  // CemberDaire c2 = CemberDaire(10); //
  // print("Çemberin çevresi: ${c2.cevreHesapla()}"); // Çemberin çevresi: 62.800000000000004
  // print("Dairenin alanı: ${c2.alanHesapla()}"); // Dairenin alanı: 314.0 
  // CemberDaire c3 = CemberDaire(-5); // Geçersiz yarıçap, 1 olarak atanacak
  // print("Çemberin çevresi: ${c3.cevreHesapla()}"); // Çemberin çevresi: 6.28

  // print("Dairenin alanı: ${c3.alanHesapla()}"); // Dairenin alanı: 3.14

//   List<Ogrenci> ogrenciler = List.filled(10, Ogrenci());
//   // 100 elemanlı bir liste oluşturuyoruz ve başlangıçta Ogrenci nesneleri ile dolduruyoruz
//   ogrenciDoldur(ogrenciler); // Öğrencileri rastgele notlarla doldur
//   ogrencileriYazdir(ogrenciler); // Öğrencileri yazdır
//   notOrtalamaHesapla(ogrenciler); // Öğrencilerin not ortalamasını hesapla
// }

// void ogrenciDoldur(List<Ogrenci> ogrenciler) {
//   for (int i = 0; i < ogrenciler.length; i++) {
//     int id = Random().nextInt(1000); // 0-999 arasında rastgele id
//     // 1000'den büyük id'ler istemiyorsak, 0-999 arasında rastgele id oluşturuyoruz
//     int not = Random().nextInt(101); // 0-100 arasında rastgele not
//     ogrenciler[i] = Ogrenci(id: id, not: not);
//   }
}

// Öğrencileri yazdırma metodu
// void ogrencileriYazdir(List<Ogrenci> ogrenciler) {
//   for (Ogrenci ogrenci in ogrenciler) {
//     print(ogrenci);
//   }
// }

// void notOrtalamaHesapla(List<Ogrenci> ogrenciler) {
//   if (ogrenciler.isEmpty) {
//     print("Öğrenci listesi boş.");
//     return;
//   }
  
//   int toplamNot = 0;
//   for (Ogrenci ogrenci in ogrenciler) {
//     toplamNot += ogrenci.not;
//   }
  
//   double ortalama = toplamNot / ogrenciler.length;
//   print("Öğrencilerin not ortalaması: $ortalama");
// }

List<Kullanici> kullaniciListesi = [];

void start() {
  print("Program başladı.");
  // Burada programın başlangıç işlemleri yapılabilir
  while(true) {
    print("Lütfen bir işlem seçin:");
    print("1. Kullanıcı Girişi");
    print("2. Kullanıcı Kaydı");
    print("3. Çıkış");
    String? secim = stdin.readLineSync();
    if (secim == null) {
      print("Geçersiz seçim, lütfen tekrar deneyin.");
      continue; // Kullanıcı geçersiz bir seçim yaparsa döngü başa döner
    }
    switch (secim) {
      case '1':
        // Kullanıcı girişi işlemleri
        print("Kullanıcı girişi seçildi.");
        login(); // Kullanıcı girişi işlemi için login fonksiyonu çağrılır
        // Burada kullanıcı girişi işlemleri yapılabilir
        break;
      case '2':
        // Kullanıcı kaydı işlemleri
        print("Kullanıcı kaydı seçildi.");
        register(); // Kullanıcı kaydı işlemi için register fonksiyonu çağrılır
        // Burada kullanıcı kaydı işlemleri yapılabilir
        break;
      case '3':
        print("Programdan çıkılıyor.");
        return; // Programdan çıkış yapar
      default:
        print("Geçersiz seçim, lütfen tekrar deneyin.");
    }
  }
}

void register() {
  print("Kullanıcı kaydı işlemleri başlatıldı.");
  print("Lütfen ad soyadınızı girin:");
  String? adSoyad = stdin.readLineSync();
  
  print("Lütfen kullanıcı adınızı girin:");
  String? kullaniciAdi = stdin.readLineSync();
  
  print("Lütfen e-posta adresinizi girin:");
  String? mail = stdin.readLineSync();
  
  print("Lütfen şifrenizi girin:");
  String? sifre = stdin.readLineSync();
  
  if (adSoyad == null || kullaniciAdi == null || mail == null || sifre == null) {
    print("Tüm alanlar doldurulmalıdır.");
    return; // Kullanıcı bilgileri eksikse kayıt işlemi iptal edilir
  }
  
  Kullanici yeniKullanici = Kullanici(adSoyad, kullaniciAdi, mail, sifre);
  print(yeniKullanici);
  //kullaniciListesi.add(yeniKullanici);
  
  print("Kullanıcı kaydı başarılı: ${yeniKullanici}");
}

void login() {
  print("Kullanıcı girişi işlemleri başlatıldı.");
  print("Lütfen kullanıcı adınızı girin:");
  String? kullaniciAdi = stdin.readLineSync();
  
  print("Lütfen şifrenizi girin:");
  String? sifre = stdin.readLineSync();
  
  if (kullaniciAdi == null || sifre == null) {
    print("Kullanıcı adı ve şifre boş bırakılamaz.");
    return; // Kullanıcı adı veya şifre eksikse giriş işlemi iptal edilir
  }
  
  Kullanici.login(kullaniciAdi, sifre, kullaniciListesi);
} 



