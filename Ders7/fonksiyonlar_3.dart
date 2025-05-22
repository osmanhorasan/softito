import 'dart:io';
import 'dart:math';

class ATM {
  double bakiye = 1000.0;
  double krediBakiye = 1568.0;
  final String username = "Ahmet";
  final String password = "123456";
  bool isLoggedIn = false;
  String currentUser = "";

  void start() {
    while (true) {
      if (!isLoggedIn) {
        if (!girisYap()) {
          print("Giriş başarısız! Lütfen tekrar deneyin.");
          continue;
        }
      }
      anaMenu();
    }
  }

  bool girisYap() {
    stdout.write("Kullanıcı Adı: ");
    String kullaniciAdi = stdin.readLineSync()!;
    stdout.write("Şifre: ");
    String sifre = stdin.readLineSync()!;

    if (kullaniciAdi == username && sifre == password) {
      isLoggedIn = true;
      currentUser = kullaniciAdi;
      return true;
    }
    return false;
  }

  void anaMenu() {
    print("\n=== ATM ANA MENÜ ===");
    print("Hoş geldiniz, $currentUser!");
    print("1- Bankacılık İşlemleri");
    print("2- Kredi Kartı İşlemleri");
    print("3- Hesap Kartı İşlemleri");
    print("4- Çıkış Yap");
    stdout.write("Seçiminiz: ");
    
    String secim = stdin.readLineSync()!;
    switch (secim) {
      case "1":
        bankacilikIslemleri();
        break;
      case "2":
        krediKartiIslemleri();
        break;
      case "3":
        hesapKartiIslemleri();
        break;
      case "4":
        cikisYap();
        break;
      default:
        print("Geçersiz seçim!");
    }
  }

  void bankacilikIslemleri() {
    while (true) {
      print("\n=== BANKACILIK İŞLEMLERİ ===");
      print("1- Para Yatırma");
      print("2- Para Çekme");
      print("3- Bakiye Sorgulama");
      print("4- Ana Menüye Dön");
      stdout.write("Seçiminiz: ");

      String secim = stdin.readLineSync()!;
      switch (secim) {
        case "1":
          paraYatirma("Banka");
          break;
        case "2":
          paraCekme("Banka");
          break;
        case "3":
          bakiyeSorgula("Banka");
          break;
        case "4":
          return;
        default:
          print("Geçersiz seçim!");
      }
    }
  }

  void krediKartiIslemleri() {
    while (true) {
      print("\n=== KREDİ KARTI İŞLEMLERİ ===");
      print("1- Kredi Kartı Bakiyesini Sorgula");
      print("2- Kredi Kartı ile Para Çekme");
      print("3- Kredi Kartı Borcu Ödeme");
      print("4- Kredi Kartı Borcu Sorgula");
      print("5- Ana Menüye Dön");
      stdout.write("Seçiminiz: ");

      String secim = stdin.readLineSync()!;
      switch (secim) {
        case "1":
          bakiyeSorgula("Kredi Karti");
          break;
        case "2":
          paraCekme("Kredi Karti");
          break;
        case "3":
          paraYatirma("Kredi Karti");
          break;
        case "4":
          print("Kredi Kartı Borcunuz: ${krediBakiye}₺");
          break;
        case "5":
          return;
        default:
          print("Geçersiz seçim!");
      }
    }
  }

  void hesapKartiIslemleri() {
    while (true) {
      print("\n=== HESAP KARTI İŞLEMLERİ ===");
      print("1- Hesap Kartı Bakiyesini Sorgula");
      print("2- Hesap Kartı ile Para Yatırma");
      print("3- Hesap Kartı ile Para Çekme");
      print("4- Ana Menüye Dön");
      stdout.write("Seçiminiz: ");

      String secim = stdin.readLineSync()!;
      switch (secim) {
        case "1":
          bakiyeSorgula("Hesap Karti");
          break;
        case "2":
          paraYatirma("Hesap Karti");
          break;
        case "3":
          paraCekme("Hesap Karti");
          break;
        case "4":
          return;
        default:
          print("Geçersiz seçim!");
      }
    }
  }

  void paraYatirma(String kartTipi) {
    try {
      stdout.write("${kartTipi == "Kredi Karti" ? "Ödemek İstediğiniz Miktar: " : "Yatırmak İstediğiniz Miktar: "}");
      double miktar = double.parse(stdin.readLineSync()!);
      
      if (miktar <= 0) {
        print("Geçersiz miktar!");
        return;
      }

      if (kartTipi == "Kredi Karti") {
        krediBakiye += miktar;
      } else {
        bakiye += miktar;
      }
      print("İşlem başarıyla tamamlandı!");
      bakiyeSorgula(kartTipi);
    } catch (e) {
      print("Geçersiz miktar girişi!");
    }
  }

  void paraCekme(String kartTipi) {
    try {
      stdout.write("Çekmek İstediğiniz Miktar: ");
      double miktar = double.parse(stdin.readLineSync()!);
      
      if (miktar <= 0) {
        print("Geçersiz miktar!");
        return;
      }

      if (kartTipi == "Kredi Karti") {
        if (miktar > krediBakiye) {
          print("Yetersiz bakiye!");
          return;
        }
        krediBakiye -= miktar;
      } else {
        if (miktar > bakiye) {
          print("Yetersiz bakiye!");
          return;
        }
        bakiye -= miktar;
      }
      print("İşlem başarıyla tamamlandı!");
      bakiyeSorgula(kartTipi);
    } catch (e) {
      print("Geçersiz miktar girişi!");
    }
  }

  void bakiyeSorgula(String kartTipi) {
    if (kartTipi == "Kredi Karti") {
      print("Kredi Kartı Bakiyeniz: ${krediBakiye}₺");
    } else {
      print("Hesap Bakiyeniz: ${bakiye}₺");
    }
  }

  void cikisYap() {
    print("Çıkış yapılıyor...");
    isLoggedIn = false;
    currentUser = "";
    exit(0);
  }
}

void main() {
  ATM atm = ATM();
  atm.start();
}
