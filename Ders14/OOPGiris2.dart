import 'conf.dart';

void main(List<String> args) {
  // OOP (Nesne Yönelimli Programlama) örneği
  // Bu örnek, basit bir veritabanı işlemleri sınıfını içermektedir.

  VeriTabaniIslemleri veritabani =
      VeriTabaniIslemleri(); // VeriTabaniIslemleri sınıfından bir nesne oluşturma
  // Nesne üzerinden veritabanı işlemlerini gerçekleştirme
  if (veritabani.baglan()) {
    veritabani.verileriGetir(); // Veritabanından verileri getirme
    veritabani.verileriKaydet(); // Veritabanına verileri kaydetme
  } else {
    print(
      "Veritabanı bağlantısı başarısız.",
    ); // Bağlantı başarısızsa hata mesajı yazdırma
  }
}
