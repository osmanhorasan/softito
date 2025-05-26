import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  basla();
}

int deger1 = 0;
int deger2 = 0;
int secim = 0;

void basla() {
  stdout.write("1.Üstlü işlemler\n2.Büyük Sayı");
  secimAl();
  deger1Al("${secim == 1 ? 'Taban Degerini' : '1.Sayıyı'}");
  deger2Al("${secim == 1 ? 'Kuvvet Degerini' : '2.Sayıyı'}");
  if (secim == 1)
    print("Cevap : ${usHesapla()}");
  else if (secim == 2)
    print("Cevap : ${buyukHesapla()}");
  else {
    print("Geçersiz Seçim");
    secimAl();
  }

  sayilariBirlerstir();
  PCYazdir();
  sehirEkle();
}

int degerAl() => int.parse(stdin.readLineSync()!);

void secimAl() {
  secim = degerAl();
}

void deger1Al(String text) {
  stdout.write("Lütfen $text Giriniz");
  deger1 = degerAl();
}

void deger2Al(String text) {
  stdout.write("Lütfen $text Giriniz");
  deger2 = degerAl();
}

dynamic usHesapla() => pow(deger1, deger2);
int buyukHesapla() => max(deger1, deger2);

var meyveler = ["Elma", "Armut"];

var sebzeler = ["Maydonoz", "Nane"];

var servisTabagi = [...meyveler, ...sebzeler];

List<String> sehirler = List<String>.filled(4, "");

void sehirEkle() {
  for (var i = 0; i < sehirler.length; i++) {
    print("Şehir Giriniz.");
    sehirler[i] = sehirAl();
  }
}

String sehirAl() {
  return stdin.readLineSync() ?? '';
}

Map<dynamic, dynamic> PC = {"ram": 8, "ssd": 256, "hiz": 2.9};

void PCYazdir() {
  for (var entry in PC.entries) {
    print("${entry.key}: ${entry.value}");
  }
}

List<int> sayilar1 = List<int>.filled(5, 0);
List<int> sayilar2 = List<int>.filled(5, 0);
Set<int> sayilarSpe = {};

void sayilariBirlerstir() {
  for (int i = 0; i < 5; i++) {
    sayilar1[i] = Random().nextInt(50);
    sayilar2[i] = Random().nextInt(50);
  }
  sayilarSpe = {...sayilar1, ...sayilar2};
  print(sayilar1);
  print(sayilar2);
  print(sayilarSpe);
}

List<int> pozitifSayilar = [];

void psa() {
  while (true) {
    print("Bir Sayı Giriniz");
    int p = degerAl();
    if (p < 1)
      break;
    else
      pozitifSayilar.add(p);
  }
}

dynamic verial() => stdin.readLineSync();
veriEkle(String text, key, value, Map<String, dynamic> arkadasMap) {
  stdout.write("$text:");
  arkadasMap[key] = value;
}

void arkadasEkle(Map<String, dynamic> arkadasMap) {
  veriEkle("Ad Soyad", "adsoyad", verial(), arkadasMap);
  veriEkle("Yaş", "yas", int.parse(verial()), arkadasMap);
  veriEkle("Tuttuğu Takım", "takim", verial(), arkadasMap);
  veriEkle("Sevdiği Renk", "renk", verial(), arkadasMap);
}

void arkadasYazdir(List<dynamic> arkadasList) {
  for (var arkadas in arkadasList) {
    for (var entry in arkadas.entries) {
      print("${entry.key}: ${entry.value}");
    }
  }
}

void arkadasGrup() {
  List<dynamic> arkadasList = []; // Tüm Arkadaş Listesi
  for (var i = 0; i < 5; i++) {
    Map<String, dynamic> arkadas = {}; // Arkadas Bilgileri
    arkadasEkle(arkadas); // Arkadaş Ekleme
    arkadasList.add(arkadas); // Listeye Atama
  }
  arkadasYazdir(arkadasList);
}

// Kısa Yapımı
void arkadasGrup2() {
  final arkadasList = List.generate(2, (_) {
    final arkadas = <String, dynamic>{};
    stdout.write('Ad Soyad:');
    arkadas['adsoyad'] = stdin.readLineSync();
    stdout.write('Yaş:');
    arkadas['yas'] = int.parse(stdin.readLineSync()!);
    stdout.write('Tuttuğu Takım:');
    arkadas['takim'] = stdin.readLineSync();
    stdout.write('Sevdiği Renk:');
    arkadas['renk'] = stdin.readLineSync();
    return arkadas;
  });

  arkadasList.forEach((arkadas) =>
      arkadas.forEach((key, value) => stdout.write('$key: $value')));
}
