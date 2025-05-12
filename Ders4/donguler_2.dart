import 'dart:io';

void main(List<String> args) {
  /* - Örnek 1: - */
  /*
  while (true) {
    print("""
    Menü
    1-Kahve: 100₺
    2-Çay: 50₺
    3-Soğuk İçecek: 75₺
    """);
    stdout.write("Seçiminiz: ");
    int secim = int.parse(stdin.readLineSync()!);
    stdout.write("\nKaç adet sipariş vermek istiyorsunuz: ");
    int adet = int.parse(stdin.readLineSync()!);
    
    print("\n########################################################################################");
    if (secim == 1) {
      print("Kahve siparişiniz alındı. Toplam Adet: $adet, Toplam Tutar: ${100 * adet}₺");
    } else if (secim == 2) {
      print("Çay siparişiniz alındı. Toplam Adet: $adet, Toplam Tutar: ${50 * adet}₺");
    } else if (secim == 3) {
      print("Soğuk İçecek siparişiniz alındı. Toplam Adet: $adet, Toplam Tutar: ${75 * adet}₺");
    }
    print("########################################################################################\n");
  }
*/

  double toplam = 0;
  double ortalama = 0;
  int adet = 0;
  for (int i = 0; i < 5; i++) {
    stdout.write("Lütfen ${i + 1}. sayıyı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    if (sayi > 0) { toplam += sayi; adet++; }
  }
  ortalama = toplam / adet;
  print("Ortalama: $ortalama");
}
