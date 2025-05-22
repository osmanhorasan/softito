import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // 1. Örnek
  List<int> sayilar = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]; // 10 elemanlı bir liste
  for (var i in sayilar) {
    print(i);
  }

  // 2. Örnek
  List<int> sayilar2 = []; // 10 elemanlı bir liste
  for (var i = 0; i < 10; i++) {
    stdout.write("sayı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar2.add(sayi);
  }
  print("*" * 5 + "Liste" + "*" * 5);
  for (var i in sayilar2) {
    print(i);
  }
  print("*" * 5 + "Liste" + "*" * 5);

  // 3. Örnek
  List<String> meyveler = [];
  for (var i = 0; i < 5; i++) {
    stdout.write("meyve giriniz: ");
    String meyve = stdin.readLineSync()!;
    meyveler.add(meyve);
  }
  print("*" * 5 + "Liste" + "*" * 5);
  for (var i in meyveler) {
    print(i);
  }
  print("*" * 5 + "Liste" + "*" * 5);

  // 4. Örnek

  List<int> sayilar3 = List.filled(10, 0);
  for (var i = 0; i < 10; i++) {
    stdout.write("sayı giriniz: ");
    int sayi = int.parse(stdin.readLineSync()!);
    sayilar3[i] = sayi;
  }
  print(sayilar3);

  // 5. Örnek 10 tane 1 - 100 arasında rastgele sayılar
  List<int> sayilar4 = [];
  Random random = Random();
  for (var i = 0; i < 10; i++) {
    int sayi = random.nextInt(100) + 1;
    sayilar4.add(sayi);
  }
  print("*" * 5 + "Liste" + "*" * 5);
  int sayac = 0;
  for (var i in sayilar4) {
    sayac++;
    print("$sayac. sayı: $i");
  }
  print("*" * 5 + "Liste" + "*" * 5);

  // 6. Örnek
  List<int> ciftSayilar = [];
  List<int> tekSayilar = [];
  for (var i in sayilar4) {
    if (i % 2 == 0) {
      ciftSayilar.add(i);
    } else {
      tekSayilar.add(i);
    }
  }
  print("*" * 5 + "Çift Sayılar" + "*" * 5);
  for (var i in ciftSayilar) {
    print(i);
  }
  print("*" * 5 + "Tek Sayılar" + "*" * 5);
  for (var i in tekSayilar) {
    print(i);
  }

  // 7. Örnek
  List<int> pozitifSayilar = [];
  List<int> negatifSayilar = [];
  List<int> sifirSayilar = [];

  for (var i in sayilar4) {
    if (i > 0) {
      pozitifSayilar.add(i);
    } else if (i < 0) {
      negatifSayilar.add(i);
    } else {
      sifirSayilar.add(i);
    }
  }
  int sayac1 = 0;
  print("*" * 5 + "Pozitif Sayılar" + "*" * 5);
  for (var i in pozitifSayilar) {
    sayac1++;
    print("$sayac1. pozitif sayı: $i");
  }
  int sayac2 = 0;
  print("*" * 5 + "Negatif Sayılar" + "*" * 5);
  for (var i in negatifSayilar) {
    sayac2++;
    print("$sayac2. negatif sayı: $i");
  }
  int sayac3 = 0;
  print("*" * 5 + "Sıfır Sayılar" + "*" * 5);
  for (var i in sifirSayilar) {
    sayac3++;
    print("$sayac3. sıfır sayı: $i");
  }

  // 8. Örnek
  List<int> uceBolunenSayilar = [];
  List<int> dortBolunenSayilar = [];
  List<int> herIkisineBolunenSayilar = [];
  for (var i in sayilar4) {
    if (i % 3 == 0) {
      uceBolunenSayilar.add(i);
    }
    if (i % 4 == 0) {
      dortBolunenSayilar.add(i);
    }
    if (i % 3 == 0 && i % 4 == 0) {
      herIkisineBolunenSayilar.add(i);
    }
  }
  print("*"*5 + "3'e Bölünen Sayılar" + "*"*5);
  int sayac4 = 0;
  for (var i in uceBolunenSayilar) {
    sayac4++;
    print("$sayac4. 3'e bölünen sayı: $i");
  }
  print("*"*5 + "4'e Bölünen Sayılar" + "*"*5);
  int sayac5 = 0;
  for (var i in dortBolunenSayilar) {
    sayac5++;
    print("$sayac5. 4'e bölünen sayı: $i");
  }
  print("*"*5 + "Hem 3'e hem 4'e bölünen sayılar" + "*"*5);
  int sayac6 = 0;
  for (var i in herIkisineBolunenSayilar) {
    sayac6++;
    print("$sayac6. hem 3'e hem 4'e bölünen sayı: $i");
  }
}