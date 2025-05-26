/*
    // ## OOP Giriş ##
    
    // # OOP (Object-Oriented Programming) Nedir?
    // OOP, nesne tabanlı programlama anlamına gelir. OOP, yazılım geliştirmede nesneleri ve sınıfları kullanarak kodun daha modüler, yeniden kullanılabilir ve bakımı kolay olmasını sağlar.
    
    // # OOP'nin Temel Kavramları
    // 1. Sınıflar (Classes): Sınıflar, nesnelerin şablonlarını tanımlar. Sınıflar, özellikler (attributes) ve metotlar (methods) içerir.
    // 2. Nesneler (Objects): Sınıflardan oluşturulan örneklerdir. Nesneler, sınıfın özelliklerini ve metotlarını kullanabilir.
    // 3. Kalıtım (Inheritance): Bir sınıfın başka bir sınıftan özellik ve metotları miras almasıdır. Bu, kodun yeniden kullanılabilirliğini artırır.
    // 4. Polimorfizm (Polymorphism): Farklı sınıfların aynı metot adını kullanabilmesi ve farklı davranışlar sergileyebilmesidir.
    // 5. Kapsülleme (Encapsulation): Sınıfın içindeki verilerin ve metotların dışarıdan erişimini kontrol etme işlemidir. Bu, veri gizliliğini sağlar.
    // 6. Soyutlama (Abstraction): Karmaşık sistemlerin basitleştirilmesi ve sadece gerekli bilgilerin sunulmasıdır.
    
    // # OOP'nin Avantajları
    // 1. Modülerlik: Kodun daha modüler hale gelmesi, kodun daha iyi organize edilmesini sağlar.
    // 2. Yeniden Kullanılabilirlik: Sınıflar ve nesneler, kodun yeniden kullanılabilirliğini artırır.
    // 3. Bakım Kolaylığı: OOP, kodun daha kolay bakımını sağlar. Sınıflar ve nesneler, kodun daha iyi organize edilmesini sağlar.
    // 4. Veri Gizliliği: Kapsülleme sayesinde, sınıfın içindeki verilerin dışarıdan erişimi kontrol edilebilir.
    // 5. Daha İyi Anlaşılabilirlik: OOP, kodun daha iyi anlaşılmasını sağlar. Sınıflar ve nesneler, kodun daha iyi organize edilmesini sağlar.
    
    // # OOP'nin Dezavantajları
    // 1. Performans: OOP, bazı durumlarda performans sorunlarına neden olabilir. Sınıflar ve nesneler, daha fazla bellek kullanabilir.
    // 2. Öğrenme Eğrisi: OOP, bazı programcılar için öğrenme eğrisini artırabilir. Sınıflar ve nesneler, daha karmaşık bir yapıya sahip olabilir.
    // 3. Karmaşıklık: OOP, bazı durumlarda kodun daha karmaşık hale gelmesine neden olabilir. Sınıflar ve nesneler, daha fazla kod yazmayı gerektirebilir.
    // 4. Aşırı Soyutlama: OOP, bazı durumlarda aşırı soyutlamaya neden olabilir. Sınıflar ve nesneler, daha fazla soyutlama gerektirebilir.
    // 5. Gereksiz Soyutlama: OOP, bazı durumlarda gereksiz soyutlamaya neden olabilir. Sınıflar ve nesneler, daha fazla soyutlama gerektirebilir.
    // 6. Gereksiz Kapsülleme: OOP, bazı durumlarda gereksiz kapsüllemeye neden olabilir. Sınıflar ve nesneler, daha fazla kapsülleme gerektirebilir.
    // 7. Gereksiz Kalıtım: OOP, bazı durumlarda gereksiz kalıtıma neden olabilir. Sınıflar ve nesneler, daha fazla kalıtım gerektirebilir.
    // 8. Gereksiz Polimorfizm: OOP, bazı durumlarda gereksiz polimorfizme neden olabilir. Sınıflar ve nesneler, daha fazla polimorfizm gerektirebilir.
    
    // # OOP'nin Kullanım Alanları
    // OOP, yazılım geliştirmede birçok alanda kullanılabilir. OOP, oyun geliştirme, web geliştirme, masaüstü uygulama geliştirme, mobil uygulama geliştirme gibi birçok alanda kullanılabilir. OOP, yazılım geliştirmede daha modüler, yeniden kullanılabilir ve bakımı kolay kod yazmayı sağlar.
    
    // # Consructors Nedir?
    // Constructor, bir sınıfın örneği oluşturulduğunda otomatik olarak çağrılan özel bir metottur. Sınıfın özelliklerini başlatmak için kullanılır. Dart dilinde yapıcı metotlar, sınıf adının önüne "new" anahtar kelimesi eklenerek çağrılır.
    // Dart dilinde sınıfların yapıcı metotlarıdır. Sınıfın özelliklerini başlatmak için kullanılır. Yapıcı metotlar, sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır. Dart dilinde yapıcı metotlar, sınıf adının önüne "new" anahtar kelimesi eklenerek çağrılır. Yapıcı metotlar, sınıfın özelliklerini başlatmak için kullanılır.
    
    // # Neden Constructor Kullanılır?
    // 1. Sınıfın özelliklerini başlatmak için kullanılır.
    // 2. Sınıfın bir örneği oluşturulduğunda otomatik olarak çağrılır.

    // Factory Constructor Nedir?
    // Factory constructor, bir sınıfın örneği oluşturulurken özel bir işlem yapmak için kullanılır. Factory constructor, sınıfın örneğini döndüren bir metottur. Factory constructor, sınıfın örneğini döndürürken özel bir işlem yapabilir. Factory constructor, sınıfın örneğini döndürürken özel bir işlem yapabilir.
    // Factory'de this kullanılmaz.

 */

void main(List<String> args) {
  print("OOP Giriş Programına Hoş Geldiniz!");
  // ## Sınıf ve nesne oluşturma

  // # Hayvanlar sınıfından bir nesne oluşturma
  Hayvanlar hayvan = Hayvanlar(); // Hayvanlar sınıfından bir nesne oluşturma

  // # Nesne özelliklerini atama
  hayvan.name = "Kedi"; // Hayvanın adını atama
  hayvan.numberOfFeet = 4; // Hayvanın ayak sayısını atama
  hayvan.IsitFlying = false; // Hayvanın uçup uçamayacağını atama

  // # Nesne özelliklerini kullanma
  print("Hayvan Adı: ${hayvan.name}"); // Hayvanın adını yazdırma
  print(
    "Ayak Sayısı: ${hayvan.numberOfFeet}",
  ); // Hayvanın ayak sayısını yazdırma
  print(
    "Uçabiliyor mu: ${hayvan.IsitFlying}",
  ); // Hayvanın uçup uçamayacağını yazdırma

  // # Nesne metotlarını çağırma
  hayvan.eatFood(); // Hayvanın yemek yediğini belirten metodu çağır

  /* ##################################################################################### */

  // # Araba sınıfından bir nesne oluşturma
  Araba araba = Araba(); // Araba sınıfından bir nesne oluşturma

  // # Nesne özelliklerini atama
  araba.marka = "Toyota"; // Arabanın markasını atama
  araba.model = "Corolla"; // Arabanın modelini atama
  araba.yil = 2020; // Arabanın üretim yılını atama
  araba.elektrikliMi = false; // Arabanın elektrikli olup olmadığını atama
  araba.benzinliMi = true; // Arabanın benzinli olup olmadığını atama
  araba.dizelMi = false; // Arabanın dizel olup olmadığını atama
  araba.hibritMi = false; // Arabanın hibrit olup olmadığını atama
  araba.otomatikMi = true; // Arabanın otomatik olup olmadığını atama

  // # Nesne metotlarını çağırma
  araba.yazdir(); // Arabanın bilgilerini yazdıran metodu çağır

  /* ##################################################################################### */

  // # Point sınıfından bir nesne oluşturma
  Point nokta = Point(3.0, 4.0); // Point sınıfından bir nesne oluşturma

  // # Nesne özelliklerini kullanma
  nokta.yazdir(); // Noktanın koordinatlarını yazdıran metodu çağır
  nokta.yazdir(); // Noktanın koordinatlarını yazdıran metodu çağır

  // # Point sınıfından başka bir nesne oluşturma
  Point nokta2 = Point(5.0, 6.0); // Point sınıfından başka bir nesne oluşturma
  // # Nesne özelliklerini kullanma
  nokta2.yazdir(); // Noktanın koordinatlarını yazdıran metodu çağır

  /* ##################################################################################### */

  // # Kisi sınıfından bir nesne oluşturma
  Kisi kisi = Kisi(
    "Ahmet",
    "Yılmaz",
    30,
  ); // Kisi sınıfından bir nesne oluşturma ve ad, soyad ve yaş parametrelerini geçme

  // # Nesne özelliklerini kullanma
  kisi.kendiniTanit(); // Kişinin kendini tanıttığı metodu çağır

  /* ##################################################################################### */

  // # Ogrenci sınıfından bir nesne oluşturma

  Ogrenci ogrenci = Ogrenci(
    "Ayşe",
    "Demir",
    20,
    "ABC Üniversitesi",
  ); // Ogrenci sınıfından bir nesne oluşturma ve ad, soyad, yaş ve okul parametrelerini geçme
  // # Nesne metotlarını çağırma
  ogrenci.OgrenciTanit(); // Öğrencinin kendini tanıttığı metodu çağır

  /* ##################################################################################### */

  // # Urun sınıfından bir nesne oluşturma

  Urun urun = Urun(
    "Laptop",
    15000.0,
    10,
  ); // Urun sınıfından bir nesne oluşturma ve ad, fiyat ve stok miktarı parametrelerini geçme

  // # Nesne metotlarını çağırma
  urun.urunBilgisi(); // Ürünün bilgilerini yazdıran metodu çağır

  /* ##################################################################################### */

  // # Meyveler sınıfından bir nesne oluşturma

  Meyveler elma = Meyveler(
    ad: "Elma",
    renk: "Kırmızı",
    tatlilikDerecesi: 8,
  ); // Meyveler sınıfından bir nesne oluşturma ve ad, renk ve tatlılık derecesi parametrelerini geçme

  // # Nesne metotlarını çağırma
  elma.meyveBilgisi(); // Meyvenin bilgilerini yazdıran metodu çağır

  /* ##################################################################################### */
}

// ## Hayvanlar sınıfı, hayvanların özelliklerini ve davranışlarını tanımlar
class Hayvanlar {
  // # Sınıfın özellikleri (fields):

  // Bu sınıf, bir hayvanın adını, ayak sayısını ve uçup uçamayacağını tutar
  // Hayvanın adını, ayak sayısını ve uçup uçamayacağını tutan özellikler

  String name = ""; // Hayvanın adını tutan özellik
  int numberOfFeet = 0; // Hayvanın ayak sayısını tutan özellik
  bool IsitFlying = false; // Hayvanın uçup uçamayacağını tutan özellik

  // # Sınıfın metotları (methods):
  void eatFood() {
    print("Yemek Yiyor"); // Hayvanın yemek yediğini belirten metot
  }
}

// ## Araba sınıfı, bir arabanın özelliklerini ve davranışlarını tanımlar
class Araba {
  // Sınıfın özellikleri (fields):

  // Bu sınıf, bir arabanın özelliklerini ve davranışlarını tanımlar
  // Arabanın markasını, modelini, üretim yılını ve motor tipini tutan özellikler
  // Arabanın elektrikli, benzinli, dizel, hibrit ve otomatik olup olmadığını tutan özellikler

  String marka = ""; // Arabanın markasını tutan özellik
  String model = ""; // Arabanın modelini tutan özellik
  int yil = 0; // Arabanın üretim yılını tutan özellik
  bool elektrikliMi =
      false; // Arabanın elektrikli olup olmadığını tutan özellik
  bool benzinliMi = false; // Arabanın benzinli olup olmadığını tutan özellik
  bool dizelMi = false; // Arabanın dizel olup olmadığını tutan özellik
  bool hibritMi = false; // Arabanın hibrit olup olmadığını tutan özellik
  bool otomatikMi = false; // Arabanın otomatik olup olmadığını tutan özellik

  // # Sınıfın metotları (methods):
  void yazdir() {
    print("Araba Bilgileri:"); // Arabanın bilgilerini yazdıran metot
    print("Marka: $marka"); // Arabanın markasını yazdırma
    print("Model: $model"); // Arabanın modelini yazdırma
    print("Yıl: $yil"); // Arabanın üretim yılını yazdırma
    print(
      "Elektrikli mi: $elektrikliMi",
    ); // Arabanın elektrikli olup olmadığını yazdırma
    print(
      "Benzinli mi: $benzinliMi",
    ); // Arabanın benzinli olup olmadığını yazdırma
    print("Dizel mi: $dizelMi"); // Arabanın dizel olup olmadığını yazdırma
    print("Hibrit mi: $hibritMi"); // Arabanın hibrit olup olmadığını yazdırma
    print(
      "Otomatik mi: $otomatikMi",
    ); // Arabanın otomatik olup olmadığını yazdırma
  }


}



// ## Point sınıfı, bir noktanın koordinatlarını temsil eder
class Point {
  // # Sınıfın özellikleri (fields):

  // Bu sınıf, bir noktanın koordinatlarını temsil eder
  // Noktanın X ve Y koordinatlarını tutan özellikler

  double x = 0.0; // Noktanın X koordinatını tutan özellik
  double y = 0.0; // Noktanın Y koordinatını tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  // Bu yapıcı metot, x ve y koordinatlarını alır ve sınıfın özelliklerini başlatır
  Point(x, y) {
    print(
      "Nokta Oluşturuldu: ($x, $y)",
    ); // Nokta oluşturulduğunda mesaj yazdırır
  }

  // # Sınıfın metotları (methods):
  // Noktanın koordinatlarını yazdıran metot
  void yazdir() {
    print("Nokta: ($x, $y)"); // Noktanın koordinatlarını yazdıran metot
  }
}

// ## Kişi sınıfı, bir kişinin özelliklerini ve davranışlarını tanımlar
class Kisi {
  // # Sınıfın özellikleri (fields):

  // Bu sınıf, bir kişinin adını, soyadını ve yaşını tutar
  String? ad; // Kişinin adını tutan özellik
  String? soyad; // Kişinin soyadını tutan özellik
  int? yas; // Kişinin yaşını tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  // Bu yapıcı metot, ad, soyad ve yaş parametrelerini alır ve sınıfın özelliklerini başlatır
  Kisi(ad, soyad, yas) {
    ad = ad; // Kişinin adını atar
    soyad = soyad; // Kişinin soyadını atar
    yas = yas; // Kişinin yaşını atar
  }

  // # Sınıfın metotları (methods):
  void kendiniTanit() {
    print("Merhaba, benim adım $ad $soyad ve $yas yaşındayım.");
    // Kişinin kendini tanıttığı metot
  }
}

// ## Ogrenci sınıfı, Kisi sınıfından türetilmiş bir sınıftır
class Ogrenci {
  // # Ogrenci sınıfı, Kisi sınıfından türetilmiştir
  // Ogrenci sınıfı, Kisi sınıfının özelliklerini ve metotlarını miras alır

  // # Sınıfın özellikleri (fields):

  String ad = ""; // Öğrencinin adını tutan özellik
  String soyad = ""; // Öğrencinin soyadını tutan özellik
  String okul = ""; // Öğrencinin okulunu tutan özellik
  int yas = 0; // Öğrencinin yaşını tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  Ogrenci(this.ad, this.soyad, this.yas, this.okul);

  // # Sınıfın metotları (methods):
  void OgrenciTanit() {
    print("Merhaba, benim adım $ad $soyad, $yas yaşındayım ve $okul okulunda okuyorum.");
    // Öğrencinin kendini tanıttığı metot
  }
}

// ## Urun sınıfı, ürünlerin özelliklerini ve davranışlarını tanımlar
class Urun {
  // # Urun sınıfı, ürünlerin özelliklerini ve davranışlarını tanımlar
  // Urun sınıfı, ürünlerin adını, fiyatını ve stok miktarını tutar

  // # Sınıfın özellikleri (fields):

  String ad = ""; // Ürünün adını tutan özellik
  double fiyat = 0.0; // Ürünün fiyatını tutan özellik
  int stokMiktari = 0; // Ürünün stok miktarını tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  Urun(this.ad, this.fiyat, this.stokMiktari);

  

  // # Sınıfın metotları (methods):
  void urunBilgisi() {
    print("Ürün Adı: $ad, Fiyat: $fiyat, Stok Miktarı: $stokMiktari");
    // Ürünün bilgilerini yazdıran metot
  }  
}

// ## Meyveler sınıfı, meyvelerin özelliklerini ve davranışlarını tanımlar
class Meyveler {
  // # Meyveler sınıfı, meyvelerin özelliklerini ve davranışlarını tanımlar
  // Meyveler sınıfı, meyvenin adını, rengini ve tatlılık derecesini tutar

  // # Sınıfın özellikleri (fields):

  String? ad; // Meyvenin adını tutan özellik
  String? renk; // Meyvenin rengini tutan özellik
  int? tatlilikDerecesi; // Meyvenin tatlılık derecesini tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  Meyveler({this.ad, this.renk, this.tatlilikDerecesi}); // Meyve sınıfının yapıcı metodu, ad, renk ve tatlılık derecesi parametrelerini alır

  // # Sınıfın metotları (methods):
  void meyveBilgisi() {
    print("Meyve Adı: $ad, Renk: $renk, Tatlılık Derecesi: $tatlilikDerecesi");
    // Meyvenin bilgilerini yazdıran metot
  }
}

// ## Sebzeler sınıfı, sebzelerin özelliklerini ve davranışlarını tanımlar
class Sebzeler {
  // # Sebzeler sınıfı, sebzelerin özelliklerini ve davranışlarını tanımlar
  // Sebzeler sınıfı, sebzenin adını, rengini ve acılık derecesini tutar

  // # Sınıfın özellikleri (fields):

  String? ad; // Sebzenin adını tutan özellik
  String? renk; // Sebzenin rengini tutan özellik
  int? acilikDerecesi; // Sebzenin acılık derecesini tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  // required anahtar kelimesi, ad parametresinin zorunlu olduğunu belirtir
  Sebzeler({required this.ad, this.renk, this.acilikDerecesi}); // Sebze sınıfının yapıcı metodu, ad, renk ve acılık derecesi parametrelerini alır

  // # Sınıfın metotları (methods):
  void sebzeBilgisi() {
    print("Sebze Adı: $ad, Renk: $renk, Acılık Derecesi: $acilikDerecesi");
    // Sebzenin bilgilerini yazdıran metot
  }
}

class Metaller {
  // # Metaller sınıfı, metallerin özelliklerini ve davranışlarını tanımlar
  // Metaller sınıfı, metalin adını, yoğunluğunu ve sertliğini tutar

  // # Sınıfın özellikleri (fields):

  String? ad; // Metalin adını tutan özellik
  double? yogunluk; // Metalin yoğunluğunu tutan özellik
  int? sertlik; // Metalin sertliğini tutan özellik

  // # Sınıfın yapıcı metodu (constructor):
  Metaller({this.ad, this.yogunluk, this.sertlik}); // Metal sınıfının yapıcı metodu, ad, yoğunluk ve sertlik parametrelerini alır

  factory Metaller.createMetal(String ad, double yogunluk, int sertlik) {
    // Factory constructor, metalin adını, yoğunluğunu ve sertliğini alır
    return Metaller(ad: ad, yogunluk: yogunluk, sertlik: sertlik);
  }

  // # Sınıfın metotları (methods):
  void metalBilgisi() {
    print("Metal Adı: $ad, Yoğunluk: $yogunluk, Sertlik: $sertlik");
    // Metalin bilgilerini yazdıran metot
  }
}




// ## Notlar:
// -> Not: Bu kod, Dart dilinde yazılmıştır ve terminalde çalıştırılabilir.
// -> Bu kod, OOP (Object-Oriented Programming) kavramlarını ve Dart dilinde sınıf ve nesne kullanımını gösterir.

