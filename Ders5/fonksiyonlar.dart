import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
    Random: Random sınıfı, rasgele sayılar üretmek için kullanılır.
    Rastgele sayı üretmek için:
    - Random() sınıfının bir örneğini oluşturun.
    - nextInt() metodunu kullanın.
    - nextDouble() metodunu kullanın.
    - nextBool() metodunu kullanın.
    - nextInt(int max) metodunu kullanın.
    - nextDouble(double max) metodunu kullanın.
    
    Ceil :
    - Ceil, sayıyı en yakın büyük tam sayıya yuvarlar.
    - Örnek: 3.14 -> 4
    - Örnek: 3.99 -> 4
    - Örnek: 3.00 -> 3
    
    Floor :
    - Floor, sayıyı en yakın küçük tam sayıya yuvarlar.
    - Örnek: 3.14 -> 3
    - Örnek: 3.99 -> 3
    - Örnek: 3.00 -> 3

    Sqrt :
    - Sqrt, sayının karekökünü hesaplar.
    - Örnek: 9 -> 3
    - Örnek: 16 -> 4
    - Örnek: 25 -> 5

    abs :
    - abs, sayının mutlak değerini hesaplar.
    - Örnek: -3.14 -> 3.14
    - Örnek: 3.99 -> 3.99
    - Örnek: 3.00 -> 3.00

    min :
    - min, iki sayı arasından en küçüğünü bulur.
    - Örnek: 3.14 ve 3.99 -> 3.14
    - Örnek: 3.99 ve 3.00 -> 3.00
    - Örnek: 3.00 ve 3.14 -> 3.00
    
    max :
    - max, iki sayı arasından en büyüğünü bulur.
    - Örnek: 3.14 ve 3.99 -> 3.99
    - Örnek: 3.99 ve 3.00 -> 3.99
    - Örnek: 3.00 ve 3.14 -> 3.14
    
    pow :
    - pow, sayının kuvvetini hesaplar.
    - Örnek: 2^3 -> 8
    - Örnek: 3^2 -> 9
    - Örnek: 4^2 -> 16
    
    
    
    
    
    
    
    
    
    
   */

  /* - 1.Örnek: Rastgele sayı üretme - */
  Random random = Random();
  int rastgeleSayi = random.nextInt(100); // 0-99 arası rastgele sayı üretir
  print("Rastgele sayı: $rastgeleSayi");

  /* - 2.Örnek: Rastgele sayı üretme - */
  int rastgeleSayi2 =
      random.nextInt(20) + 10; // 10-29 arası rastgele sayı üretir
  print("Rastgele sayı: $rastgeleSayi2");

  /* - 3.Örnek: Rastgele double sayı üretme - */
  double rastgeleDouble =
      random.nextDouble(); // 0.0-1.0 arası rastgele double sayı üretir
  print("Rastgele double sayı: $rastgeleDouble");

  /* - 4.Örnek: Rastgele double değer üretme -*/
  double rastgeleDouble2 =
      random.nextDouble() * 256; // 0.0-256.0 arası rastgele double sayı üretir
  print("Rastgele double sayı: $rastgeleDouble2");

  /* - 5.Örnek: Rastgele bool değer üretme - */
  bool rastgeleBool = random.nextBool(); // true veya false değerini üretir
  print("Rastgele bool değer: $rastgeleBool");

  /* - 6.Örnek: Rastgele sayı üretme - */

  var toplam = 0; // toplam değişkeni oluşturuldu
  for (var i = 0; i < 10; i++) {
    toplam += random.nextInt(24) + 1; // 1-24 arası rastgele sayı üretir
  }
  print("Toplam: $toplam"); // toplam değişkeni ekrana yazdırılır

  /* - 7.Örnek: Rastgele sayı üretme - */

  var tekSayilar = 0; // tek sayıların sayısı
  var ciftSayilar = 0; // çift sayıların sayısı

  for (var i = 0; i < 6; i++) {
    var rastgeleSayi = random.nextInt(100); // 0-99 arası rastgele sayı üretir
    if (rastgeleSayi % 2 == 0) {
      ciftSayilar++; // çift sayıların sayısı
    } else {
      tekSayilar++; // tek sayıların sayısı
    }
  }
  print("Tek sayılar: $tekSayilar"); // tek sayıların sayısı ekrana yazdırılır
  print(
    "Çift sayılar: $ciftSayilar",
  ); // çift sayıların sayısı ekrana yazdırılır

  /* - 8.Örnek: Rastgele sayı üretme - */

  for (var i = 0; i < 10; i++) {
    var rastgeleSayi =
        random.nextInt(40) + 0; // 0 - 40 arası rastgele sayı üretir
    if (rastgeleSayi >= 20) {
      print(
        "20 veya daha büyük sayı: $rastgeleSayi",
      ); // 20 veya daha büyük sayı ekrana yazdırılır
    } else {
      print(
        "20'den küçük sayı: $rastgeleSayi",
      ); // 20'den küçük sayı ekrana yazdırılır
    }
  }

  /* - 9.Örnek: Ceil - */

  var sayi = 3.14;
  var yuvarlanmisSayi =
      sayi.ceil(); // sayıyı en yakın büyük tam sayıya yuvarlar
  print(
    "Yuvarlanmış sayı: $yuvarlanmisSayi",
  ); // yuvarlanmış sayı ekrana yazdırılır

  /* - 10.Örnek: Floor - */

  var sayi2 = 3.99;
  var yuvarlanmisSayi2 =
      sayi2.floor(); // sayıyı en yakın küçük tam sayıya yuvarlar
  print(
    "Yuvarlanmış sayı: $yuvarlanmisSayi2",
  ); // yuvarlanmış sayı ekrana yazdırılır

  /* - 11.Örnek: Sqrt - */

  var sayi3 = 9;
  var karekok = sqrt(sayi3); // sayının karekökünü hesaplar
  print("Karekök: $karekok"); // karekök ekrana yazdırılır

  /* - 12.Örnek: abs - */

  var sayi4 = -3.14; // sayı değişkeni oluşturuldu
  var mutlakDeger = sayi4.abs(); // sayının mutlak değerini hesaplar
  print("Mutlak değer: $mutlakDeger"); // mutlak değer ekrana yazdırılır

  /* - 13.Örnek: min - */

  var sayi5 = 3.14;
  var sayi6 = 3.99;
  var enKucukSayi = min(sayi5, sayi6); // iki sayı arasından en küçüğünü bulur
  print("En küçük sayı: $enKucukSayi"); // en küçük sayı ekrana yazdırılır

  /* - 14.Örnek: max - */

  var sayi7 = 3.14;
  var sayi8 = 3.99;
  var enBuyukSayi = max(sayi7, sayi8); // iki sayı arasından en büyüğünü bulur
  print("En büyük sayı: $enBuyukSayi"); // en büyük sayı ekrana yazdırılır

  /* - 15.Örnek: pow - */

  print("Kuvvet: ${pow(2, 3)}"); // kuvvet ekrana yazdırılır
  print("Kuvvet: ${pow(3, -2)}"); // kuvvet ekrana yazdırılır
  print("Kuvvet: ${pow(-3, 2)}"); // kuvvet ekrana yazdırılır
  print("Kuvvet: ${pow(-3, -2)}"); // kuvvet ekrana yazdırılır
  print("Kuvvet: ${pow(0.3, 2)}"); // kuvvet ekrana yazdırılır

  /* - 16.Örnek: Rastgele sayı üretme - */
  /*
  while (true) {
    stdout.write("Kaç Adet Sayı Üretmek İstiyorsunuz : ");
    var sayiAdedi = int.parse(stdin.readLineSync()!);
    stdout.write("Üretilmesi Gereken En Yüksek Sayıyı Giriniz : ");
    var enYuksekSayi = int.parse(stdin.readLineSync()!);
    var toplam = 0;
    for (var i = 0; i < sayiAdedi; i++) {
      var rastgeleSayi = random.nextInt(
        enYuksekSayi,
      ); // 0-enYuksekSayi arası rastgele sayı üretir
      print(
        "Üretilen ${i + 1}.sayı: $rastgeleSayi",
      ); // rastgele sayı ekrana yazdırılır
      toplam += rastgeleSayi;
    }
    print(
      "Üretilen $sayiAdedi adet sayının toplamı: $toplam",
    ); // toplam ekrana yazdırılır
    break;
  }
*/

  /* - 17.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Lütfen Bir Sayı Giriniz : "); // Kullanıcıdan bir sayı alınır
    var sayi = sqrt(int.parse(stdin.readLineSync()!).abs()).floor(); // Sayının karekökü alınır ve tam sayıya çevrilir
    int toplam = 0; // Toplam değişkeni oluşturulur
    for (var i = 0; i < sayi; i++) {
      var rastgeleSayi = random.nextInt(100); // 0-99 arası rastgele sayı üretir
      print("Üretilen ${i + 1}.sayı: $rastgeleSayi"); // Üretilen sayı ekrana yazdırılır
      toplam += rastgeleSayi; // Üretilen sayı toplama eklenir
    }
    stdout.writeln("Toplam : $toplam"); // Toplam ekrana yazdırılır
    break; // Döngüden çıkılır
  }
  */

  /* - 18.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Lütfen Bir Sayı Giriniz : "); // Kullanıcıdan bir sayı alınır
    var sayi = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    stdout.write("Lütfen ikinci bir sayı giriniz : "); // Kullanıcıdan ikinci bir sayı alınır
    var sayi2 = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    int toplam = 0; // Toplam değişkeni oluşturulur
    for (var i = 0; i < sqrt(min(sayi.abs(), sayi2.abs())).ceil(); i++) {
      // Girilen sayıların mutlak değerlerinin en büyüğünün karekökünün en yakın büyük tam sayısı kadar döngü yapılır
      var rastgeleSayi = random.nextInt(max(sayi.abs(), sayi2.abs())); // Girilen sayıların mutlak değerlerinin en büyüğünün karekökünün en yakın büyük tam sayısı kadar rastgele sayı üretir
      print("Üretilen ${i + 1}.sayı: $rastgeleSayi"); // Üretilen sayı ekrana yazdırılır
      toplam += rastgeleSayi; // Üretilen sayı toplama eklenir
    }
    stdout.writeln("Toplam : $toplam"); // Toplam ekrana yazdırılır
    break; // Döngüden çıkılır
  }
  */

  /* - 19.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Lütfen Bir Sayı Giriniz : "); // Kullanıcıdan bir sayı alınır
    var sayi = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    stdout.write(
      "Lütfen ikinci bir sayı giriniz : ",
    ); // Kullanıcıdan ikinci bir sayı alınır
    var sayi2 = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    int toplam = 0; // Toplam değişkeni oluşturulur
    for (var i = 0; i < sqrt(min(sayi.abs(), sayi2.abs())).ceil(); i++) {
      // Girilen sayıların mutlak değerlerinin en büyüğünün karekökünün en yakın büyük tam sayısı kadar döngü yapılır
      var rastgeleSayi = random.nextInt(
        max(sayi.abs(), sayi2.abs()),
      ); // Girilen sayıların mutlak değerlerinin en büyüğünün karekökünün en yakın büyük tam sayısı kadar rastgele sayı üretir
      if (rastgeleSayi % 3 == 0) {
        print(
          "Üretilen ${i + 1}.sayı: $rastgeleSayi",
        ); // Üretilen sayı ekrana yazdırılır
        toplam += rastgeleSayi; // Üretilen sayı toplama eklenir
      }
    }
    stdout.writeln("Toplam : $toplam"); // Toplam ekrana yazdırılır
    break; // Döngüden çıkılır
  }
  */

  /* - 20.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Lütfen Tabanı Giriniz : "); // Kullanıcıdan bir sayı alınır
    var taban = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    stdout.write("Lütfen Üssü Giriniz : "); // Kullanıcıdan bir sayı alınır
    var us = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    var sonuc = pow(taban, us); // Sonuç ekrana yazdırılır
    if (sonuc > 100) {
      print("Sonuç 100'den büyüktür"); // Sonuç ekrana yazdırılır
    } else {
      print("Sonuç 100'den küçüktür"); // Sonuç ekrana yazdırılır
    }
    break; // Döngüden çıkılır
  }
  */

  /* - 21.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Üst sınırı giriniz : "); // Kullanıcıdan bir sayı alınır
    var us = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    for (var i = 0; i < 2; i++) {
      print(
        "Rastgele sayı : ${max(random.nextInt(us) + 1, random.nextInt(us) + 1)}",
      ); // Rastgele sayı ekrana yazdırılır ve döngüden çıkılır
    }
    break; // Döngüden çıkılır
  }
  */

  /* - 22.Örnek: Genel Fonksiyonlar - */
  /*
  while (true) {
    stdout.write("Üst sınırı giriniz : "); // Kullanıcıdan bir sayı alınır
    var us = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    stdout.write("Kaç Adet Sayı Üretmek İstiyorsunuz : "); // Kullanıcıdan bir sayı alınır
    var adet = double.parse(stdin.readLineSync()!).toInt(); // Sayı Alınır
    var toplam = 0;
    for (var i = 0; i < adet; i++) {
      int sayi = random.nextInt(us) + 1; // Rastgele sayı üretir
      print("Rastgele sayı : $sayi"); // Rastgele sayı ekrana yazdırılır
      toplam += sayi;
    }
    print("Ortalama : ${toplam ~/ adet}"); // Ortalama ekrana yazdırılır
    break; // Döngüden çıkılır
  }
  */

  /* - 23.Örnek: Genel Fonksiyonlar - */
  while (true) {
    stdout.write("1.Oyuncunun Adını Giriniz : "); // Kullanıcıdan adı alınır
    var oyuncu1 = stdin.readLineSync(); // Adı alınır
    stdout.write(
      "Oyuna Devam Etmek için E , Çıkış Yapmak için H harfine basınız : ",
    ); // Kullanıcıdan adı alınır
    var secim = stdin.readLineSync(); // Seçim alınır
    int puan1 = 0;

    if (secim == "E") {
      for (var i = 0; i < 3; i++) {
        int sayi = random.nextInt(6) + 1; // Rastgele sayı üretir
        puan1 += sayi;
      }
      print("Puanınız : $puan1"); // Toplam ekrana yazdırılır
    } else if (secim == "H") {
      print("Çıkış Yapıldı"); // Çıkış yapıldı ekrana yazdırılır
    }

    stdout.write("2.Oyuncunun Adını Giriniz : "); // Kullanıcıdan adı alınır
    var oyuncu2 = stdin.readLineSync(); // Adı alınır
    stdout.write(
      "Oyuna Devam Etmek için E , Çıkış Yapmak için H harfine basınız : ",
    ); // Kullanıcıdan adı alınır
    var secim2 = stdin.readLineSync(); // Seçim alınır
    int puan2 = 0;
    if (secim2 == "E") {
      for (var i = 0; i < 3; i++) {
        int sayi = random.nextInt(6) + 1; // Rastgele sayı üretir
        puan2 += sayi;
      }
      print("Puanınız : $puan2"); // Toplam ekrana yazdırılır
    } else if (secim2 == "H") {
      print("Çıkış Yapıldı"); // Çıkış yapıldı ekrana yazdırılır
    }

    if (puan1 > puan2) {
      print(
        "$oyuncu1 $puan1 puan ile kazandınız , $oyuncu2 $puan2 puan ile kaybettiniz",
      ); // Kazandı ekrana yazdırılır
    } else if (puan1 < puan2) {
      print(
        "$oyuncu2 $puan2 puan ile kazandınız , $oyuncu1 $puan1 puan ile kaybettiniz",
      ); // Kaybetti ekrana yazdırılır
    } else {
      print(
        "Berabere , $oyuncu1 $puan1 puan ile , $oyuncu2 $puan2 puan ile",
      ); // Berabere ekrana yazdırılır
    }
    break; // Döngüden çıkılır
  }
}
