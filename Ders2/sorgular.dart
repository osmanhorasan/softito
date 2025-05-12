import 'dart:io';

void main(List<String> args) {
  /* 
    ------------------------ KARAR ALMA YAPILARI ------------------------  
      if
      else
      else if
      switch  
  */

  /* 
    ------------------------ KARŞILAŞTIRMA OPERATÖRLERİ ------------------------ 
      ==
      !=
      >
      <
      >=
      <=
  */

  /* 
    ------------------------ MANTIKSAL OPERATÖRLER ------------------------ 
      &&
      ||
      !  
  */

  /* ------------------------ Örnekler ------------------------ */

  /* - 1. Örnek -  */

  /*
      int sayi = 10;
      int sayi2 = 20;

      print(sayi > sayi2);
      print(sayi < sayi2);
      print(sayi == sayi2);
      print(sayi != sayi2);
      print(sayi >= sayi2);
      print(sayi <= sayi2);
  */

  /* - 2. Örnek - */

  /*
      String kullaniciAdi = "Admin";
      String sifre = "admin";
      print(kullaniciAdi == sifre);
  */

  /* - 3. Örnek - */

  /*
      bool isState = 12 > 5;
      print(isState);

      bool isState2 = 17 == 19;
      print(isState2);

      print(isState && isState2);
  */

  /* - 4. Örnek - */

  /*
      bool isState = 12 > 5;
      print(isState);

      bool isState2 = 17 < 19;
      print(isState2);

      print(isState && isState2);
  */

  /* - 5. Örnek - */

  /*
      bool isState = 12 > 5;
      print(isState);

      bool isState2 = 17 < 19;
      print(isState2);

      print(isState || isState2);
  */

  /* - 6. Örnek - */

  /*
        bool isState = 12 > 5;
        print(isState);

        bool isState2 = "admin" == "Admin";
        print(isState2);

        print(isState || isState2);
  */

  /* - 7. Örnek - */

  /*
        stdout.write("Hangi Sayı Daha Büyüktür Oyununa Hoşgeldiniz\n");

        stdout.write("Lütfen 1. sayıyı giriniz: ");
        int sayi = int.parse(stdin.readLineSync()!);

        stdout.write("Lütfen 2. sayıyı giriniz: ");
        int sayi2 = int.parse(stdin.readLineSync()!);

        stdout.write("Girdiğiniz $sayi ve $sayi2 sayılarının sonucu: ${sayi == sayi2}\n");
  */

  /* - 8. Örnek - */

  /*
        stdout.write("Lütfen işlem yapmak istediğiniz sayıyı giriniz: ");
        int sayi3 = int.parse(stdin.readLineSync()!);

        stdout.write("Lütfen Karşılaştırmak istediğiniz sayıyı giriniz: ");
        int sayi4 = int.parse(stdin.readLineSync()!);

        stdout.write("Girdiğiniz $sayi3 sayısının 2 katının 5 fazlası  $sayi4 sayısı ile karşılaştırıldığında sonucu: ${sayi3 * 2 + 5} == $sayi4 => ${sayi3 * 2 + 5 == sayi4}");
  */

  /* - 9. Örnek - */

  /*
        int yas = 15;

        if (yas >= 18) {
          stdout.write("Sen Reşitsin");
        } else {
          stdout.write("Sen Reşit Değilsin");
        }
  */

  /* - 10. Örnek - */

  /*
      stdout.write("Lütfen Yaşınızı Giriniz: ");
      int yas = int.parse(stdin.readLineSync()!);

      if (yas >= 18) {
        stdout.write("Ehliyet Alabilirsiniz");
      } else {
        stdout.write("Ehliyet Alamazsınız");
      }
  */

  /* - 11. Örnek - */

  /*
      stdout.write("Lütfen 1. sayıyı giriniz: ");
      int sayi1 = int.parse(stdin.readLineSync()!);

      stdout.write("Lütfen 2. sayıyı giriniz: ");
      int sayi2 = int.parse(stdin.readLineSync()!);

      if (sayi1 > sayi2) {
        stdout.write("Girdiginiz $sayi1 sayısı $sayi2 sayısından büyüktür");
      } else {
        stdout.write("Girdiginiz $sayi1 sayısı $sayi2 sayısından küçüktür");
      }
 */

  /* - 12. Örnek - */

  /*
      stdout.write("Lütfen Adınızı Giriniz:");
      String ad = stdin.readLineSync()!;

      stdout.write("Sevgili $ad, Lütfen Cinsiyetinizi Giriniz: ");
      String cinsiyet = stdin.readLineSync()!;

      String hitap;

      if (cinsiyet == "e" || cinsiyet == "E") {
        hitap = "Bey";
      } else {
        hitap = "Hanım";
      }

      stdout.write("Sevgili $ad $hitap Oyununa Hoşgeldiniz\n");

      stdout.write("Lütfen 1.sayıyı giriniz: ");
      int sayi1 = int.parse(stdin.readLineSync()!);

      stdout.write("Lütfen 2.sayıyı giriniz: ");
      int sayi2 = int.parse(stdin.readLineSync()!);

      if (sayi1 > sayi2) {
        stdout.write("Girdiginiz $sayi1 sayısı $sayi2 sayısından büyüktür");
      }
      else {
        stdout.write("Girdiginiz $sayi1 sayısı $sayi2 sayısından küçüktür");
      }
  */

  /* - 13. Örnek - */

  /*
      stdout.write("Lütfen işlem yapmak istediğiniz sayıyı giriniz: ");
      int sayi1 = int.parse(stdin.readLineSync()!);

      stdout.write("Lütfen Karşılaştırmak istediğiniz sayıyı giriniz: ");
      int sayi2 = int.parse(stdin.readLineSync()!);

      bool sonuc = sayi1 * 2 + 5 > sayi2;

      if (sonuc) {
        stdout.write("Girdiğiniz $sayi1 sayısının 2 katının 5 fazlası olan ${sayi1 * 2 + 5} sayısı $sayi2 sayısından büyüktür");
      }
      else {
        stdout.write("Girdiğiniz $sayi1 sayısının 2 katının 5 fazlası olan ${sayi1 * 2 + 5} sayısı $sayi2 sayısından küçüktür");
      }
  */

  /* - 14. Örnek - */

  /*
      String kullaniciAdiSorgu = "Admin";

      stdout.write("Lütfen Kullanıcı Adınızı Giriniz: ");
      String kullaniciAdi = stdin.readLineSync()!;

      if (kullaniciAdi == kullaniciAdiSorgu) {
        stdout.write("Kullanıcı Adı Doğru");
      }
      else {
        stdout.write("Kullanıcı Adı Yanlış");
      }    
  */

  /* - 15. Örnek - */

  /*
      String kullaniciAdiSorgu = "Admin";
      String sifreSorgu = "123456";

      stdout.write("Lütfen Kullanıcı Adınızı Giriniz: ");
      String kullaniciAdi = stdin.readLineSync()!;

      stdout.write("Lütfen Şifrenizi Giriniz: ");
      String sifre = stdin.readLineSync()!;

      bool sonuc = kullaniciAdi == kullaniciAdiSorgu && sifre == sifreSorgu;  

      if (sonuc) {
        stdout.write("Giriş Başarılı");
      }
      else {
        stdout.write("Giriş Başarısız");
      }
  */

  /* - 16. Örnek - */

  /*
      stdout.write("Lütfen bir sayı giriniz: ");
      int sayi = int.parse(stdin.readLineSync()!);

      if (sayi % 2 == 0) {
        stdout.write("Girdiğiniz $sayi sayısı çift sayıdır");
      }
      else {
        stdout.write("Girdiğiniz $sayi sayısı tek sayıdır");
      }
  */

  /* - 17. Örnek - */

  /*  
      stdout.write("Lütfen bir sayı giriniz: ");
      int sayi = int.parse(stdin.readLineSync()!);

      if (sayi > 0) {
        stdout.write("Girdiğiniz $sayi sayısı pozitif sayıdır");
      }
      else if (sayi < 0) {
        stdout.write("Girdiğiniz $sayi sayısı negatif sayıdır");
      }
      else {
        stdout.write("Girdiğiniz $sayi sayısı Nötr sayıdır");
      }
*/

  /* - 18. Örnek - */

  /*
      stdout.write("Lütfen bir sayı giriniz: ");
      int sayi1 = int.parse(stdin.readLineSync()!);

      stdout.write("Lütfen bir sayı giriniz: ");
      int sayi2 = int.parse(stdin.readLineSync()!);

      stdout.write(
        "Bir işlem seçiniz:\n Toplama (+)\n Çıkarma (-)\n Çarpma (*)\n Bölme (/)\n Mod Alma (%)\n Çıkış (x)\n",
      );
      String islem = stdin.readLineSync()!;  

      if (islem == "+") {
        stdout.write(
          "$sayi1 $islem $sayi2 = ${sayi1 + sayi2}",
        );
      } else if (islem == "-") {
        stdout.write(
          "$sayi1 $islem $sayi2 = ${sayi1 - sayi2}",
        );
      } else if (islem == "*") {
        stdout.write(
          "$sayi1 $islem $sayi2 = ${sayi1 * sayi2}",
        );
      } else if (islem == "/") {
        stdout.write(
          "$sayi1 $islem $sayi2 = ${sayi1 / sayi2}",
        );
      } else if (islem == "%") {
        stdout.write(
          "$sayi1 $islem $sayi2 = ${sayi1 % sayi2}",
        );
      } 
      else if (islem == "x") {
        stdout.write("Çıkış Yapılıyor...");
        exit(0);
      }
      else {
        stdout.write("Geçersiz işlem");
      }
  */

  /* - 19. Örnek - */

  /*
      stdout.write("Lütfen bir sayı giriniz: ");
      String? sayi = stdin.readLineSync();
      
      if (sayi == null || sayi.isEmpty) {
        stdout.write("Lütfen geçerli bir sayı giriniz!");
      } else {
        try {
          int sayiInt = int.parse(sayi);
          
          if (sayiInt == 0) {
            stdout.write("Girdiğiniz $sayi sayısı sıfırdır");
          } else if (sayiInt % 2 == 0) {
            stdout.write("Girdiğiniz $sayi sayısı çift sayıdır");
          } else {
            stdout.write("Girdiğiniz $sayi sayısı tek sayıdır");
          }
        } catch (e) {
          stdout.write("Lütfen geçerli bir sayı giriniz!");
        }
      }
  */
}
