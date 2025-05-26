import 'dart:io';

void main(List<String> args) {
  print("Çokgen Açı Hesaplama Programına Hoş Geldiniz!"); // Programın başlangıç mesajı
  basla(); // Başlangıç fonksiyonunu çağır
  print("Programdan çıkmak için herhangi bir tuşa basın..."); // Programdan çıkma mesajı
  stdin.readLineSync(); // Kullanıcının bir tuşa basmasını bekler
} // Ana fonksiyon, programın başlangıç noktasıdır

Set<int> degerler = {}; // Kenar uzunluklarını tutmak için bir Set kullanılır, çünkü Set içinde tekrar eden değerler bulunmaz

void basla() {
  cokgenBul(); // Üçgen türünü belirlemek için kenar uzunluklarını alır
  cokgenAciHesapla(); // Çokgen açı hesaplama fonksiyonlarını çağır
  
}

// Üçgen türünü belirlemek için kenar uzunluklarını kullanıcıdan alır
void cokgenBul() {
  for (var i = 0; i < 3; i++) {
    degerler.add(degerAl("Lütfen $i.kenarı giriniz")); // Kullanıcıdan üç kenar uzunluğunu alır ve bir sete ekler
  }
  kontrol(degerler); // Kenar uzunluklarını kontrol eder ve üçgen türünü belirler
}

int degerAl(String text) {
  stdout.write("Lütfen $text Giriniz"); // Kullanıcıdan kenar uzunluklarını alır
  return int.parse(stdin.readLineSync()!); // Kullanıcıdan kenar uzunluklarını alır ve int tipine dönüştürür
}

String kontrol(Set<int> degerler) {
  if (degerler.length == 1)
    return "Eşkenar Üçgen"; // Tüm kenarlar eşitse Eşkenar Üçgen
  else if (degerler.length == 2)
    return "İkizkenar Üçgen"; // İki kenar eşitse İkizkenar Üçgen
  else
    return "Çeşitkenar Üçgen"; // Tüm kenarlar farklıysa Çeşitkenar Üçgen
}

// Çokgen açı hesaplama fonksiyonları
int icAciToplami(int kenarSayisi) {
  return (kenarSayisi - 2) * 180; // İç açı toplamı, kenar sayısından 2 çıkarılıp 180 ile çarpılır
  // Örneğin, bir üçgen için iç açı toplamı 180 derece olur
}

// Bir iç açıyı hesaplamak için, iç açı toplamını kenar sayısına böleriz
double birIcAci(int kenarSayisi) {
  return icAciToplami(kenarSayisi) / kenarSayisi; // İç açı, iç açı toplamını kenar sayısına böler
  // Örneğin, bir üçgen için iç açı toplamı 180 derece, her bir iç açı 60 derece olur
}

// Bir dış açıyı hesaplamak için, her kenar için 360 dereceyi kenar sayısına böleriz
double birDisAci(int kenarSayisi) {
  return 360 / kenarSayisi; // Dış açı, her kenar için 360 dereceyi kenar sayısına böler
  // Örneğin, bir üçgen için dış açı 120 derece olur
}

void cokgenAciHesapla() {
  int n = degerAl("Kenar sayısını giriniz:");
  int secim = degerAl(
      'Ne yapmak istiyorsunuz? 1-İç açı toplamı 2-Bir iç açı 3-Bir dış açı'); // Kullanıcıdan seçim al

  switch (secim) {
    case 1:
      print('İç açı toplamı: ${icAciToplami(n)}'); // İç açı toplamını hesapla
      break;
    case 2:
      print('Bir iç açı: ${birIcAci(n)}'); // Bir iç açıyı hesapla
      break;
    case 3:
      print('Bir dış açı: ${birDisAci(n)}'); // Bir dış açıyı hesapla
      break;
    default:
      print('Geçersiz seçim'); // Geçersiz seçim durumunda mesaj göster
      break;
  }
}
// Not: Bu kod, Dart dilinde yazılmıştır ve terminalde çalıştırılabilir.