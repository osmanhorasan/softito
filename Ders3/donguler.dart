import 'dart:io';

void main(List<String> args) {
  /*
  Döngüler, bir işlemi belirli bir sayıda tekrarlamak için kullanılır.
  Dart'ta en sık kullanılan döngüler:
  - for döngüsü: Belirli bir sayıda tekrar için
  - while döngüsü: Koşul sağlandığı sürece tekrar için
  - do-while döngüsü: En az bir kez çalışması gereken döngüler için
  - for-in döngüsü: Koleksiyonlar üzerinde dolaşmak için
  - for-each döngüsü: Koleksiyonların her elemanı için işlem yapmak için
 */

  /* - 1. Örnek - */
  /*
        // 0'dan 10'a kadar olan sayıları yazdıran for döngüsü
        for (int i = 0; i <= 10; i++) {
          print(i); // Her sayıyı ekrana yazdır
        }
  */

  /* - 2. Örnek - */
  /*
      // 0'dan 10'a kadar olan sayıları yazdıran alternatif for döngüsü
      for (int i = 0; i < 11; i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 3. Örnek - */
  /*
      // 0'dan 10'a kadar olan sayıları i+1 şeklinde artırarak yazdıran döngü
      for (int i = 0; i <= 10; i = i + 1) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 4. Örnek - */
  /*
      // 5'ten 21'e kadar olan sayıları yazdıran döngü
      for (int i = 5; i < 22; i = i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 5. Örnek - */
  /*
      // "HORASAN" kelimesini 6 kez yazdıran döngü
      for (int i = 0; i <= 5; i++) {
        print("HORASAN"); // Her seferinde HORASAN yazdır
      }
  */

  /* - 6. Örnek - */
  /*  
      // 1'den 10'a kadar olan sayıların yanına Fenerbahçe yazdıran döngü
      for (int i = 1; i <= 10; i++) {
        print("$i.Fenerbahçe"); // Sayı ve Fenerbahçe kelimesini birleştirerek yazdır
      }
  */

  /* - 7. Örnek - */
  /*
      // 0'dan 24'e kadar olan çift sayıları yazdıran döngü
      for (int i = 0; i <= 24; i+=2) {
        print(i); // Her çift sayıyı ekrana yazdır
      }
  */

  /* - 8. Örnek - */
  /*
      // 1'den 39'a kadar olan tek sayıları yazdıran döngü
      for (int i = 1; i <= 40; i+=2) {
        print(i); // Her tek sayıyı ekrana yazdır
      }
  */

  /* - 9. Örnek - */
  /*
      // Başlangıç ve bitiş değerleri arasındaki sayıları yazdıran döngü
      int bas = 10; // Başlangıç değeri
      int son = 20; // Bitiş değeri
      for (int i = bas; i <= son; i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 10. Örnek - */
  /*
      // Kullanıcıdan alınan sayıya kadar olan sayıları yazdıran döngü
      stdout.write("Lütfen bir sayı giriniz: "); // Kullanıcıdan sayı iste
      int sayi = int.parse(stdin.readLineSync()!); // Girilen sayıyı integer'a çevir
      for (int i = 1; i <= sayi; i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 11. Örnek - */
  /*
      // Kullanıcıdan alınan sayıdan 25'e kadar olan sayıları yazdıran döngü
      stdout.write("Lütfen Kaçtan 25'e Kadar Sayılacak bir sayı giriniz: ");
      int sayi = int.parse(stdin.readLineSync()!);
      for (int i = sayi; i <= 25; i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 12. Örnek - */
  /*
      // Kullanıcıdan alınan başlangıç ve bitiş değerleri arasındaki sayıları yazdıran döngü
      stdout.write("Baslangıc degerini giriniz: ");
      int bas = int.parse(stdin.readLineSync()!);
      stdout.write("Bitis degerini giriniz: ");
      int bitis = int.parse(stdin.readLineSync()!);
      for (int i = bas; i <= bitis; i++) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 13. Örnek - */
  /*
      // Kullanıcıdan alınan başlangıç, bitiş ve artış miktarına göre sayıları yazdıran döngü
      stdout.white("Baslangıc degerini giriniz: ");
      int bas = int.parse(stdin.readLineSync()!);
      stdout.write("Bitis degerini giriniz: ");
      int bitis = int.parse(stdin.readLineSync()!);
      stdout.write("Artıs miktarını giriniz: ");
      int artis = int.parse(stdin.readLineSync()!);
      for (int i = bas; i <= bitis; i+=artis) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 14. Örnek - */
  /*
      // While döngüsü ile 1'den 4'e kadar sayıları yazdıran örnek
      int sayac = 1; // Sayaç değişkeni
      while (sayac <= 4) { // Sayaç 4'e eşit veya küçük olduğu sürece
        print(sayac); // Sayacı yazdır
        sayac++; // Sayacı bir artır
      }
  */

  /* - 15. Örnek - */
  /*
      // While döngüsü ile "HORASAN" kelimesini 10 kez yazdıran örnek
      int sayac = 1; // Sayaç değişkeni
      while (sayac <= 10) { // Sayaç 10'a eşit veya küçük olduğu sürece
        print("HORASAN"); // HORASAN yazdır
        sayac++; // Sayacı bir artır
      }
  */

  /* - 16. Örnek - */
  /*
      // 20'den 5'e kadar geriye doğru sayan for döngüsü
      for (int i = 20; i >= 5; i--) {
        print(i); // Her sayıyı ekrana yazdır
      }
  */

  /* - 17. Örnek - */
  /*
      // While döngüsü ile 20'den 5'e kadar geriye doğru sayan örnek
      int sayac = 20; // Sayaç değişkeni
      while (sayac >= 5) { // Sayaç 5'e eşit veya büyük olduğu sürece
        print(sayac); // Sayacı yazdır
        sayac--; // Sayacı bir azalt
      }
  */

  /* - 18. Örnek - */
  /*
      // Break kullanarak döngüyü sonlandıran örnek
      int sayi = 1; // Başlangıç sayısı
      while (sayi <= 10) { // Sayı 10'a eşit veya küçük olduğu sürece
        if (sayi == 5) break; // Sayı 5'e eşitse döngüyü sonlandır
        print(sayi); // Sayıyı yazdır
        sayi++; // Sayıyı bir artır
      }
  */

  /* - 19. Örnek - */
  /*      
      // Continue kullanarak belirli bir sayıyı atlayan örnek
      for(var i = 0; i<=10; i++) {
          if(i == 3 ) continue; // i 3'e eşitse bu iterasyonu atla
          print(i); // Sayıyı yazdır
      }
  */

  /* - 20. Örnek - */
  /*
      // Sonsuz döngü örneği
      int sayac = 0; // Sayaç değişkeni
      while(true) { // Sonsuz döngü
          print(sayac); // Sayacı yazdır
          sayac++; // Sayacı bir artır
      }
  */

  /* - 21. Örnek - */
  /*
      // Break ile sonlandırılan sonsuz döngü örneği
      int sayac = 0; // Sayaç değişkeni
      while(true) { // Sonsuz döngü
          if(sayac == 10) break; // Sayaç 10'a eşitse döngüyü sonlandır
          print(sayac); // Sayacı yazdır
          sayac++; // Sayacı bir artır
      }
  */

  /* - 22. Örnek - */
  /*
      // Kullanıcı girişi ile çalışan menü örneği
      while(true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if(secim == "Q" || secim == "q") break; // Q veya q girilirse çık
        else if(secim == "E" || secim == "e") { // E veya e girilirse
          stdout.write("Lütfen Adınızı Giriniz : ");
          String? ad = stdin.readLineSync(); // Adı al
          stdout.write("Lütfen Soyadınızı Giriniz : ");
          String? soyad = stdin.readLineSync(); // Soyadı al
          print("Hoşgeldiniz $ad $soyad"); // Hoşgeldin mesajı yazdır
        }
        else print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 23. Örnek - */
  /*
      // 0'dan 100'e kadar olan çift sayıları yazdıran döngü
      for (int i = 0; i <= 100; i++) {
        if (i % 2 == 0) { // Sayı çift ise
          print(i); // Sayıyı yazdır
        }
      }
  */

  /* - 24. Örnek - */
  /*
      // While döngüsü ile 0'dan 100'e kadar olan çift sayıları yazdıran örnek
      int sayac = 0; // Sayaç değişkeni
      while(sayac <= 100) { // Sayaç 100'e eşit veya küçük olduğu sürece
        if(sayac % 2 == 0) { // Sayaç çift ise
          print(sayac); // Sayacı yazdır
        }
        sayac++; // Sayacı bir artır
      }
  */

  /* - 25. Örnek - */
  /*
      // Üç sayıdan en büyüğünü bulan program
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("1.sayıyı giriniz : ");
          int sayi1 = int.parse(stdin.readLineSync()!); // 1. sayıyı al
          stdout.write("2.sayıyı giriniz : ");
          int sayi2 = int.parse(stdin.readLineSync()!); // 2. sayıyı al
          stdout.write("3.sayıyı giriniz : ");
          int sayi3 = int.parse(stdin.readLineSync()!); // 3. sayıyı al
          int buyukSayi = sayi1; // En büyük sayıyı tutacak değişken
          if(buyukSayi < sayi2) buyukSayi = sayi2; // 2. sayı daha büyükse güncelle
          if(buyukSayi < sayi3) buyukSayi = sayi3; // 3. sayı daha büyükse güncelle
          print("En büyük sayı : $buyukSayi"); // Sonucu yazdır
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 26. Örnek - */
  /*
      // KDV hesaplama programı
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("Ürün Fiyatını Giriniz (₺) : ");
          int fiyat = int.parse(stdin.readLineSync()!); // Fiyatı al
          stdout.write("KDV Oranını Giriniz (%) : ");
          int kdvOrani = int.parse(stdin.readLineSync()!); // KDV oranını al

          double kdvliFiyat = fiyat + (fiyat * kdvOrani / 100); // KDV'li fiyatı hesapla

          print("Ürün Fiyatı : $fiyat ₺"); // Ürün fiyatını yazdır
          print("KDV Tutarı : ${kdvliFiyat - fiyat} ₺"); // KDV tutarını yazdır
          print("KDV'li Fiyat : $kdvliFiyat ₺"); // KDV'li fiyatı yazdır
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 27. Örnek - */
  /*
      // Hata kontrolü eklenmiş KDV hesaplama programı
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("Ürün Fiyatını Giriniz (₺) : ");
          int fiyat = int.parse(stdin.readLineSync()!); // Fiyatı al
          stdout.write("KDV Oranını Giriniz (%) : ");
          int kdvOrani = int.parse(stdin.readLineSync()!); // KDV oranını al
          if (fiyat.isNegative || fiyat.isInfinite || fiyat == 0 || fiyat.isNaN) {
            // Fiyat geçersizse hata mesajı
            print(
              "Geçersiz Fiyat girildi lütfen tekrar deneyiniz \n Fiyat : $fiyat",
            );
          } else if (kdvOrani.isNegative ||
              kdvOrani.isInfinite ||
              kdvOrani.isNaN ||
              kdvOrani == 0) {
            // KDV oranı geçersizse hata mesajı
            print(
              "Geçersiz KDV Oranı girildi lütfen tekrar deneyiniz \n KDV Oranı : $kdvOrani",
            );
          } else {
            // Geçerli değerler için KDV hesaplama
            double kdvliFiyat = fiyat + (fiyat * kdvOrani / 100);
            print("Ürün Fiyatı : $fiyat ₺");
            print("KDV Tutarı : ${kdvliFiyat - fiyat} ₺");
            print("KDV'li Fiyat : $kdvliFiyat ₺");
          }
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 28. Örnek - */
  /*
      // Üs hesaplama programı
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("Lütfen Sayı Tabanını Giriniz : ");
          int taban = int.parse(stdin.readLineSync()!); // Taban sayısını al
          stdout.write("Lütfen Sayı Kuvvetini Giriniz : ");
          int us = int.parse(stdin.readLineSync()!); // Üs değerini al
          int sonuc = 1; // Sonuç değişkeni
          for (int i = 1; i <= us; i++) { // Üs değeri kadar döngü
            sonuc *= taban; // Sonucu taban ile çarp
            print("$taban^$i = $sonuc"); // Her adımı yazdır
          }
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 29. Örnek - */
  /*
      // Belirli aralıktaki sayıların toplamını hesaplayan program
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("Lütfen Başlangıç Değerini Giriniz : ");
          int baslangic = int.parse(stdin.readLineSync()!); // Başlangıç değerini al
          stdout.write("Lütfen Bitiş Değerini Giriniz : ");
          int bitis = int.parse(stdin.readLineSync()!); // Bitiş değerini al
          int toplam = 0; // Toplam değişkeni
          for (int i = baslangic; i <= bitis; i++) { // Başlangıçtan bitişe kadar
            toplam += i; // Her sayıyı toplama ekle
          }
          print("Toplam : $toplam"); // Toplamı yazdır
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 30. Örnek - */

  /*
  
      // Belirli bir sayının faktöriyelini hesaplayan program
      while (true) { // Sonsuz döngü
        stdout.write("Devam etmek için E-e  Çıkış Yapmak için Q-q ya basınız : ");
        String? secim = stdin.readLineSync(); // Kullanıcı seçimini al
        if (secim == "Q" || secim == "q")
          break; // Q veya q girilirse çık
        else if (secim == "E" || secim == "e") {
          stdout.write("Lütfen Faktöriyelini Hesaplamak İstediğiniz Sayıyı Giriniz : ");
          int sayi = int.parse(stdin.readLineSync()!); // Başlangıç değerini al
          double faktoriyel = 1; // Faktöriyel değişkeni
          for (int i = 1; i <= sayi; i++) { // Başlangıçtan bitişe kadar
            faktoriyel *= i; // Her sayıyı faktöriyele çarp
          }
          print("Faktöriyel : $faktoriyel"); // Faktöriyel yazdır
        } else
          print("Geçersiz seçim"); // Geçersiz seçim mesajı
      }
  */

  /* - 31. Örnek - */

  /*
      while (true) {
        // Sonsuz döngü
        String kullaniciAdi1 = "Horasan"; // Kullanıcı adı 1
        String kullaniciSifre1 = "123456"; // Kullanıcı şifresi 1
        String kullaniciAdi2 = "Osman"; // Kullanıcı adı 2
        String kullaniciSifre2 = "654321"; // Kullanıcı şifresi 2

        print("Instagram'a Hoşgeldiniz"); // Instagram'a hoşgeldiniz mesajı

        stdout.write("Lütfen Kullanıcı Adınızı Giriniz : "); // Kullanıcı adını al
        String? kullaniciAdi = stdin.readLineSync(); // Kullanıcı adını al
        stdout.write("Lütfen Kullanıcı Şifrenizi Giriniz : "); // Kullanıcı şifresini al
        String? kullaniciSifre = stdin.readLineSync(); // Kullanıcı şifresini al
        if ((kullaniciAdi == kullaniciAdi1 && kullaniciSifre == kullaniciSifre1) || (kullaniciAdi == kullaniciAdi2 && kullaniciSifre == kullaniciSifre2)) {
          print("Giriş Başarılı"); // Giriş başarılı mesajı
          print("Hoşgeldiniz $kullaniciAdi"); // Hoşgeldiniz mesajı
          print("Post Atmak İçin 1"); // Post atmak için 1
          print("Mesaj Göndermek İçin 2"); // Mesaj göndermek için 2
          print("Profili Görüntülemek İçin 3"); // Profili görüntülemek için 3
          print("Çıkış Yapmak İçin 4"); // Çıkış yapmak için 4
          String? islem = stdin.readLineSync(); // Kullanıcı seçimini al
          if (islem == "1") {
            print("Post Atıldı"); // Post atıldı mesajı
          } else if (islem == "2") {
            print("Mesaj Gönderildi"); // Mesaj gönderildi mesajı
          } else if (islem == "3") {
            print("Profil Görüntülendi"); // Profil görüntülendi mesajı
          } else if (islem == "4") {
            print("Çıkış Yapıldı"); // Çıkış yapıldı mesajı
          } else
            print("Geçersiz seçim"); // Geçersiz seçim mesajı
        } else if (kullaniciAdi == kullaniciAdi2 &&
            kullaniciSifre == kullaniciSifre2) {
          print("Giriş Başarılı"); // Giriş başarılı mesajı
        } else
          print("Giriş Başarısız"); // Giriş başarısız mesajı
      }
  */
}
