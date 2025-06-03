import 'dart:ffi';
import 'dart:io';

void main(List<String> args) {
  // Function osman = (int a, int b) => print(a + b);
  // osman(5, 10); // 15

  // var ali = (int a, int b) {
  //   return (a + b);
  // };
  // ali(5, 10); // 15

  // var veli = (int a, int b) => print(a + b);
  // veli(5, 10); // 15

  // var bolme = (int a, int b) => print(a / b);
  // bolme(10, 2); // 5.0

  // var isim = (String name) => "Merhaba $name";
  // print(isim("Osman")); // Merhaba Osman

  // String kullanici = "Osman";
  // String sifre = "12345";
  // var giris = (String kullanici, String sifre) {
  //   if (kullanici == "Osman" && sifre == "12345") {
  //     print("Giriş başarılı");
  //   } else {
  //     print("Kullanıcı adı veya şifre yanlış");
  //   }
  // };
  // giris(kullanici, sifre); // Giriş başarılı

  // List<int> sayilar = [1, 2, 3, 4, 5];

  // sayilar.forEach((sayi) {
  //   print(sayi * 2); // 2, 4, 6, 8, 10
  // });

  // var sayiListesi = [1, 2, 3, 4, 5];

  // sayiListesi.forEach(callbackFunction);

  // // Yeni bir extension metodu ekleyelim
  // sayilar.forEachNew((sayi) {
  //   print(sayi * 3); // 3, 6, 9, 12, 15
  // });

  // var isimler = ["Ali", "Veli", "Osman", "Ayşe"];

  // isimler.forEachNew((isim) {
  //   print(
  //     "Merhaba $isim",
  //   ); // Merhaba Ali, Merhaba Veli, Merhaba Osman, Merhaba Ayşe
  // });

  List<int> sayilar = [];

  while (true) {
    print("Lütfen bir sayı girin (çıkmak için 'q' tuşuna basın):");
    String? input = stdin.readLineSync();
    if (input == null || input.toLowerCase() == 'q') {
      print("Çıkılıyor...");
      ListeyiYazdir(sayilar);

      break; // Kullanıcı 'q' tuşuna basarsa döngüden çık
    }
    int? sayi = int.tryParse(input);
    if (sayi == null) {
      print("Lütfen geçerli bir sayı girin.");
      continue; // Geçersiz girişte döngünün başına dön
    }

    ListeyeEkle(sayilar, sayi);

    // Bu döngü sonsuz döngüdür, Ctrl + C ile çıkabilirsiniz.
  }
}

void ListeyeEkle(List<int> liste, int sayi) => liste.add(sayi);

void ListeyiYazdir(List<int> liste) {
  liste.forEachNew(callbackFunction);
}


void callbackFunction(dynamic sayi, int index, List liste) {
  print(
    "Callback fonksiyonu ile işlenen sayı: $sayi, index: $index",
  ); // Callback fonksiyonu ile işlenen sayı: 1, 2, 3, 4, 5
}

extension ForEachNewExtension<T> on List<T> {
  void forEachNew(void Function(T element, int index, List<T> list) action) {
    for (var i = 0; i < this.length; i++) {
      action(this[i], i, this);
    }
  }
}

// Lexical closure

// Lexical closure, bir fonksiyonun kendi kapsamındaki değişkenlere erişebilmesi anlamına gelir.
// Dart'ta, fonksiyonlar birinci sınıf nesnelerdir ve fonksiyonlar içinde tanımlanan fonksiyonlar,
// kendi kapsamındaki değişkenlere erişebilirler. Bu, fonksiyonların dışarıdan gelen değişkenlere
// erişebilmesini sağlar. Lexical closure, Dart'ın fonksiyonel programlama özelliklerinden biridir.
void main2() {
  var sayi = 10;

  var fonksiyon = () {
    print("Sayı: $sayi");
  };

  fonksiyon(); // Sayı: 10

  sayi = 20;

  fonksiyon(); // Sayı: 20

  var fonksiyon2 = (int a) {
    return (int b) => a + b;
  };

  var topla = fonksiyon2(5);
  print(topla(10)); // 15

  var fonksiyon3 = (int a) {
    return (int b) => a * b;
  };
  var carp = fonksiyon3(5);
  print(carp(10)); // 50
}