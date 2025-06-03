import 'dart:math';

class VeriTabaniIslemleri {
  // Sınıfın özellikleri
  // Bu özellikler, veritabanı bağlantısı için kullanıcı adı ve şifreyi tutar.
  // # Private erişim belirteci kullanarak bu özelliklerin dışarıdan erişimini engelleme
  // Private erişim belirteci, Dart dilinde "_" ile başlar.
  // Bu, bu özelliklerin sadece sınıf içinde erişilebileceği anlamına gelir.

  String _kullaniciAdi = "admin"; // Kullanıcı adı
  String _sifre = "12345"; // Şifre
  // Sınıfın metotları

  // Bu metotlar, veritabanı bağlantısı, verileri getirme ve kaydetme işlemlerini gerçekleştirir.
  // Getter ve setter kullanarak kullanıcı adı ve şifreye erişim sağlanabilir.
  bool baglan() {
    if (_internetVarMi()) {
      // İnternet bağlantısı varsa veritabanına bağlanma işlemi
      if (_kullaniciAdi.isEmpty || _sifre.isEmpty) {
        print(
          "Kullanıcı adı veya şifre boş olamaz.",
        ); // Kullanıcı adı veya şifre boşsa hata mesajı yazdırma
        return false; // Bağlantı başarısız
      } else if (_kullaniciAdi != "admin" || _sifre != "12345") {
        print(
          "Kullanıcı adı veya şifre yanlış.",
        ); // Kullanıcı adı veya şifre yanlışsa hata mesajı yazdırma
        return false; // Bağlantı başarısız
      }
      print("Veritabanına bağlanıldı."); // Bağlantı başarılıysa mesaj yazdırma
      return true;
    } else {
      // İnternet bağlantısı yoksa hata mesajı yazdırma
      print("İnternet bağlantısı yok, veritabanına bağlanılamadı.");
      return false; // Bağlantı başarısız
    }
  }

  bool _internetVarMi() {
    // Private metot
    // Bu metot, internet bağlantısının olup olmadığını kontrol eder.
    // Rastgele bir internet bağlantısı durumu oluşturma
    // Bu metot, sadece sınıf içinde kullanılabilir.
    bool isInternet = Random().nextBool(); // Rastgele internet bağlantısı durumu
    if (isInternet) {
      return true; // İnternet bağlantısı varsa true döndürme
    } else {
      return false; // İnternet bağlantısı yoksa false döndürme
    }
  }

  // Getter ve setter metotları
  void verileriGetir() {
    print(
      "Veriler getirildi.",
    ); // Veritabanından veriler getirildiğinde mesaj yazdırma
  }

  // Getter ve setter metotları
  void verileriKaydet() {
    print(
      "Veriler kaydedildi.",
    ); // Veritabanına veriler kaydedildiğinde mesaj yazdırma
  }
}
