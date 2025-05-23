import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  List<String> isimler = List.filled(
    10,
    "",
  ); // 10 elemanlı bir liste oluşturuyoruz
  isimEkle(
    isimler,
  ); // isimEkle fonksiyonunu çağırıyoruz ve isimler listesini parametre olarak gönderiyoruz
  isimListele(
    isimler,
  ); // isimListele fonksiyonunu çağırıyoruz ve isimler listesini parametre olarak gönderiyoruz

  List<int> sayilar = List.filled(10, 0); // 10 elemanlı bir liste oluşturuyoruz
  sayiEkle(
    sayilar,
  ); // sayiEkle fonksiyonunu çağırıyoruz ve sayilar listesini parametre olarak gönderiyoruz
  sayiListele(
    sayilar,
  ); // sayiListele fonksiyonunu çağırıyoruz ve sayilar listesini parametre olarak gönderiyoruz

  List<String> mevsimler = ["ilkbahar", "yaz", "sonbahar", "kış"];
  ayIste(
    mevsimler,
  ); // ayIste fonksiyonunu çağırıyoruz ve mevsimler listesini parametre olarak gönderiyoruz

  List<int> sayilar2 = List.filled(10, 0);
  sayiEkle2(
    sayilar2,
  ); // sayiEkle2 fonksiyonunu çağırıyoruz ve sayilar2 listesini parametre olarak gönderiyoruz
  sayiListele2(
    sayilar2,
  ); // sayiListele2 fonksiyonunu çağırıyoruz ve sayilar2 listesini parametre olarak gönderiyoruz

  List<int> sayilar3 = List.filled(0, 0, growable: true);
  sayiEkle3(
    sayilar3,
  ); // sayiEkle3 fonksiyonunu çağırıyoruz ve sayilar3 listesini parametre olarak gönderiyoruz
  sayiListele3(
    sayilar3,
  ); // sayiListele3 fonksiyonunu çağırıyoruz ve sayilar3 listesini parametre olarak gönderiyoruz

  List<dynamic> dinamikList = List.filled(0, 0, growable: true);
  dinamikListOlustur(
    dinamikList,
  ); // dinamikListOlustur fonksiyonunu çağırıyoruz ve dinamikList listesini parametre olarak gönderiyoruz
  dinamikListele(
    dinamikList,
  ); // dinamikListele fonksiyonunu çağırıyoruz ve dinamikList listesini parametre olarak gönderiyoruz

  List<int> sayilar4 = List.filled(5, 0);
  sayiEkle4(
    sayilar4,
  ); // sayiEkle4 fonksiyonunu çağırıyoruz ve sayilar4 listesini parametre olarak gönderiyoruz
  sayiListele4(
    sayilar4,
  ); // sayiListele4 fonksiyonunu çağırıyoruz ve sayilar4 listesini parametre olarak gönderiyoruz
  tekSayilar(
    sayilar4,
  ); // tekSayilar fonksiyonunu çağırıyoruz ve sayilar4 listesini parametre olarak gönderiyoruz
  ciftSayilar(
    sayilar4,
  ); // ciftSayilar fonksiyonunu çağırıyoruz ve sayilar4 listesini parametre olarak gönderiyoruz

  List<int> sayilar5 = List.filled(5, 0);
  sayiUret(sayilar5, 20);
  sayiListele5(sayilar5);

  List<int> sayilar6 = List.filled(10, 0);
  while (true) {
    sayiUret(sayilar6, 100);
    tekSayilar(sayilar6);
    ciftSayilar(sayilar6);
    break;
  }

  while (true) {
    isimEkle(isimler);
    sayiEkle(sayilar);
    stdout.write("1-isimler , 2-Sayılar");
    int secim = secimDondur();
    if (secim == 1)
      isimListele(isimler);
    else
      sayiListele(sayilar);
  }
}

// Seçim 
int secimDondur () => int.parse(stdin.readLineSync()!);

// isimEkle fonksiyonu
void isimEkle(List<String> isimler) {
  for (int i = 0; i < isimler.length; i++) {
    print(
      "Lütfen ${i + 1}. ismi giriniz: ",
    ); // Kullanıcıdan isim girişi alıyoruz
    isimler[i] =
        stdin
            .readLineSync()!; // Kullanıcının girdiği isimleri listeye ekliyoruz
  }
}

// isimListele fonksiyonu
void isimListele(List<String> isimler) {
  ekranaYazdir(isimler); // isimleri ekrana yazdırıyoruz
}

// **********************************************************************************

// sayiEkle fonksiyonu
void sayiEkle(List<int> sayilar) {
  for (int i = 0; i < sayilar.length; i++) {
    print(
      "Lütfen ${i + 1}. sayıyı giriniz: ",
    ); // Kullanıcıdan sayı girişi alıyoruz
    sayilar[i] = int.parse(
      stdin.readLineSync()!,
    ); // Kullanıcının girdiği sayıları listeye ekliyoruz
  }
}

// sayiListele fonksiyonu
void sayiListele(List<int> sayilar) {
  ekranaYazdir(sayilar); // sayıları ekrana yazdırıyoruz
}

// **********************************************************************************

// ayIste fonksiyonu
void ayIste(List<String> mevsimler) {
  print("Lütfen bir ay giriniz: "); // Kullanıcıdan ay girişi alıyoruz
  int ay = int.parse(
    stdin.readLineSync()!,
  ); // Kullanıcının girdiği ayı alıyoruz
  if (ay == 1 || ay == 2 || ay == 3) {
    print(
      "${ay} ayı ${mevsimler[0]} mevsimindedir.",
    ); // Kullanıcının girdiği ayın mevsimini ekrana yazdırıyoruz
  } else if (ay == 4 || ay == 5 || ay == 6) {
    print(
      "${ay} ayı ${mevsimler[1]} mevsimindedir.",
    ); // Kullanıcının girdiği ayın mevsimini ekrana yazdırıyoruz
  } else if (ay == 7 || ay == 8 || ay == 9) {
    print(
      "${ay} ayı ${mevsimler[2]} mevsimindedir.",
    ); // Kullanıcının girdiği ayın mevsimini ekrana yazdırıyoruz
  } else if (ay == 10 || ay == 11 || ay == 12) {
    print(
      "${ay} ayı ${mevsimler[3]} mevsimindedir.",
    ); // Kullanıcının girdiği ayın mevsimini ekrana yazdırıyoruz
  } else {
    print(
      "Geçersiz bir ay girdiniz.",
    ); // Kullanıcının girdiği ay geçersiz ise ekrana yazdırıyoruz
  }
}

// **********************************************************************************

// sayiEkle2 fonksiyonu
void sayiEkle2(List<int> sayilar2) {
  for (int i = 0; i < sayilar2.length; i++) {
    print(
      "Lütfen ${i + 1}. sayıyı giriniz: ",
    ); // Kullanıcıdan sayı girişi alıyoruz
    sayilar2[i] = int.parse(
      stdin.readLineSync()!,
    ); // Kullanıcının girdiği sayıları listeye ekliyoruz
  }
}

// sayiListele2 fonksiyonu
void sayiListele2(List<int> sayilar2) {
  ekranaYazdir(sayilar2); // sayıları ekrana yazdırıyoruz
}

// **********************************************************************************

// sayiEkle3 fonksiyonu
void sayiEkle3(List<int> sayilar3) {
  print(
    "Lütfen kaç sayı girmek istediğinizi giriniz: ",
  ); // Kullanıcıdan kaç sayı girmek istediğini soruyoruz
  sayilar3.length = int.parse(
    stdin.readLineSync()!,
  ); // Kullanıcının girdiği sayıyı alıyoruz
  for (int i = 0; i < sayilar3.length; i++) {
    print(
      "Lütfen ${i + 1}. sayıyı giriniz: ",
    ); // Kullanıcıdan sayı girişi alıyoruz
    sayilar3[i] = int.parse(
      stdin.readLineSync()!,
    ); // Kullanıcının girdiği sayıları listeye ekliyoruz
  }
}

// sayiListele3 fonksiyonu
void sayiListele3(List<int> sayilar3) {
  ekranaYazdir(sayilar3); // sayıları ekrana yazdırıyoruz
}

// **********************************************************************************

// dinamikListOlustur fonksiyonu
void dinamikListOlustur(List<dynamic> dinamikList) {
  print(
    "Lütfen kaç adet eleman girmek istediğinizi giriniz: ",
  ); // Kullanıcıdan kaç sayı girmek istediğini soruyoruz
  dinamikList.length = int.parse(
    stdin.readLineSync()!,
  ); // Kullanıcının girdiği sayıyı alıyoruz
  for (int i = 0; i < dinamikList.length; i++) {
    print(
      "Lütfen ${i + 1}. elemanı giriniz: ",
    ); // Kullanıcıdan eleman girişi alıyoruz
    dinamikList[i] =
        stdin.readLineSync()!; // Kullanıcının girdiği elemanı listeye ekliyoruz
  }
}

// dinamikListele fonksiyonu
void dinamikListele(List<dynamic> dinamikList) {
  ekranaYazdir(dinamikList); // elemanları ekrana yazdırıyoruz
}

// **********************************************************************************

// sayiEkle4 fonksiyonu
void sayiEkle4(List<int> sayilar4) {
  for (int i = 0; i < sayilar4.length; i++) {
    print(
      "Lütfen ${i + 1}. sayıyı giriniz: ",
    ); // Kullanıcıdan sayı girişi alıyoruz
    sayilar4[i] = int.parse(
      stdin.readLineSync()!,
    ); // Kullanıcının girdiği sayıları listeye ekliyoruz
  }
}

// sayiListele4 fonksiyonu
void sayiListele4(List<int> sayilar4) {
  ekranaYazdir(sayilar4); // sayıları ekrana yazdırıyoruz
}

void tekSayilar(List<int> sayilar4) {
  for (int s in sayilar4) {
    if (s % 2 == 1) {
      ekranaYazdir(sayilar4); // tek sayıları ekrana yazdırıyoruz
    }
  }
}

// ciftSayilar fonksiyonu
void ciftSayilar(List<int> sayilar4) {
  for (int s in sayilar4) {
    if (s % 2 == 0) {
      ekranaYazdir(sayilar4); // çift sayıları ekrana yazdırıyoruz
    }
  }
}

// ekranaYazdir fonksiyonu
void ekranaYazdir(List<dynamic> list) {
  for (int s in list) {
    print(s); // sayıları ekrana yazdırıyoruz
  }
}

// **********************************************************************************

void sayiUret(List<int> sayilar, int aralik) {
  stdout.write("Sayı Üretmek için R yazınız.");
  String secim = stdin.readLineSync()!;
  if (secim == "R") {
    for (int i = 0; i < sayilar.length; i++) {
      sayilar[i] = Random().nextInt(aralik) + 1;
    }
  }
}

int sayilariTopla(List<int> sayilar) {
  int toplam = 0;
  for (int s in sayilar) toplam += s;
  return toplam;
}

// sayiListele4 fonksiyonu
void sayiListele5(List<int> sayilar) {
  ekranaYazdir(sayilar); // sayıları ekrana yazdırıyoruz
  print("Toplam : ${sayilariTopla(sayilar)}");
}
