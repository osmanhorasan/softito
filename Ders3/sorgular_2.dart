
void main(List<String> args) {
  /* 
  Kısa if  
  Flutter görsel içerisinde çok kullanacagımız bir kullanım tarzıdır.

  Switch case


  */

  /* - 1.Örnek - */

  /*
      var sayi = 10;
      var sonuc = sayi > 0 ? "Pozitif" : "Negatif";
      print(sonuc);
  */

  /* - 2.Örnek - */

  /*
      var sayi = 10;
      var sonuc = sayi % 2 == 0 ? "Çift" : "Tek";
      print(sonuc);
  */

  /* - 3.Örnek - */

  /*
      String kullaniciAdi = "admin";
      String sifre = "123456";

      stdout.write("Kullanıcı Adınız: ");
      String kullaniciAdiInput = stdin.readLineSync()!;

      stdout.write("Şifreniz: ");
      String sifreInput = stdin.readLineSync()!;

      var sonuc = kullaniciAdi == kullaniciAdiInput && sifre == sifreInput ? "Giriş Başarılı" : "Giriş Başarısız";
      print(sonuc);
  */

  /* - 4.Örnek - */

  /*
      var sayi = 1;
      switch (sayi) {
        case 1:
          print("Bir");
          break;
        case 2:
          print("İki");
          break;
        default:
          print("İki");
      }
  */

  /* - 5.Örnek - */

  /*
      stdout.write(
        "Lütfen Doğdugunuz Ayı Giriniz: \n Ocak \n Şubat \n Mart \n Nisan \n Mayıs \n Haziran \n Temmuz \n Ağustos \n Eylül \n Ekim \n Kasım \n Aralık \n =>",
      );
      String ay = stdin.readLineSync()!;

      if (ay.isEmpty) {
        print("Geçersiz Ay");
        return;
      }

      if (ay == "Aralık" || ay == "Ocak" || ay == "Şubat") {
        print("Kış");
      } else if (ay == "Mart" || ay == "Nisan" || ay == "Mayıs") {
        print("İlkbahar");
      } else if (ay == "Haziran" || ay == "Temmuz" || ay == "Ağustos") {
        print("Yaz");
      } else if (ay == "Eylül" || ay == "Ekim" || ay == "Kasım") {
        print("Sonbahar");
      } else {
          print("Geçersiz Ay");
      }
  */

  /* - 6.Örnek - */

  /*
      stdout.write("Lütfen 1.Sayıyı Giriniz: ");
      int sayi = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 2.Sayıyı Giriniz: ");
      int sayi2 = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 3.Sayıyı Giriniz: ");
      int sayi3 = int.parse(stdin.readLineSync()!);

      if (sayi > sayi2 && sayi > sayi3) {
        print("En Büyük Sayı: $sayi");
      } else if (sayi2 > sayi && sayi2 > sayi3) {
        print("En Büyük Sayı: $sayi2");
      } else {
        print("En Büyük Sayı: $sayi3");
      }
  */

  /* - 7.Örnek - */

  /*
      stdout.write("Lütfen Sıcaklık Değerini Giriniz : ");
      int sicaklik = int.parse(stdin.readLineSync()!);

      if (sicaklik < 0) {
        print("Su Katı Haldedir");
      } else if (sicaklik > 0 && sicaklik < 100) {
        print("Su Sıvı Haldedir");
      } else {
        print("Su Gaz Haldedir");
      }
  */

  /* - 8.Örnek - */

  /*
      stdout.write("Lütfen 1.Sayıyı Giriniz: ");
      double sayi1 = double.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 2.Sayıyı Giriniz: ");
      double sayi2 = double.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 3.Sayıyı Giriniz: ");
      double sayi3 = double.parse(stdin.readLineSync()!);

      double aritmetikOrtalama = (sayi1 + sayi2 + sayi3) / 3;

      print("Aritmetik Ortalama: $aritmetikOrtalama");
  */

  /* - 9.Örnek - */
  /*
      stdout.write("Lütfen 1.Sınav Notunuzu Giriniz: ");
      double sinav1 = double.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 2.Sınav Notunuzu Giriniz: ");
      double sinav2 = double.parse(stdin.readLineSync()!);
      stdout.write("Lütfen 3.Sınav Notunuzu Giriniz: ");
      double sinav3 = double.parse(stdin.readLineSync()!);

      if (sinav1 < 0 ||
          sinav1 > 100 ||
          sinav2 < 0 ||
          sinav2 > 100 ||
          sinav3 < 0 ||
          sinav3 > 100) {
        stdout.write("Lütfen Geçerli Bir Not Giriniz.");
      } else {
        double ort = (sinav1 + sinav2 + sinav3) / 3;
        if (ort < 50) {
          stdout.write("Başarısız");
        } else if (ort >= 50 && ort < 70) {
          stdout.write("Orta");
        } else if (ort >= 70 && ort < 85) {
          stdout.write("İyi");
        } else {
          stdout.write("Çok İyi");
        }
      }
  */
}
