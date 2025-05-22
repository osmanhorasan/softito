import 'dart:io';

void main(List<String> args) {
  alisveris();
}

String nameSurname = "Osman HORASAN";
String address = "Kayseri";
String phone = "05079386673";
String email = "ohorasanlar@gmail.com";
String password = "123456";
bool isLoggedIn = false;

int totalPrice = 0;
int totalQuantity = 0;
int cargoPrice = 0;
String item = "";
String paymentMethod = "";

// Kadın Ürünleri Fiyatları
int geceElbisesiFiyat = 1200;
int bluzFiyat = 350;
int etekFiyat = 450;
int topukluAyakkabiFiyat = 800;
int elCantasiFiyat = 600;

// Erkek Ürünleri Fiyatları
int takimElbiseFiyat = 1500;
int gunlukGomlekFiyat = 400;
int deriCeketFiyat = 900;
int klasikAyakkabiFiyat = 700;
int kolSaatiFiyat = 1200;

// Çocuk Ürünleri Fiyatları
int cizgiFilmTisortFiyat = 200;
int tulumFiyat = 300;
int sporAyakkabiFiyat = 250;
int sirtCantasiFiyat = 180;
int oyuncakSetiFiyat = 150;

// Kargo Fiyatları
int standartKargoFiyat = 50;
int hizliKargoFiyat = 100;
int ucretsizKargoFiyat = 0;

void baslikYazdir(String title) {
  print("\n" + "=" * 50);
  print(" " * ((50 - title.length) ~/ 2) + title);
  print("=" * 50 + "\n");
}

void cizgiYazdir() {
  print("-" * 50);
}

void girisYap() {
  baslikYazdir("GİRİŞ YAP");
  stdout.write("📱 Telefon veya E-posta: ");
  String kullaniciAdi = stdin.readLineSync()!;
  stdout.write("🔑 Şifre: ");
  String sifre = stdin.readLineSync()!;
  if ((kullaniciAdi == phone || kullaniciAdi == email) && sifre == password) {
    isLoggedIn = true;
    print("\n✅ Giriş başarılı!");
  } else {
    print("\n❌ Hatalı giriş bilgileri!");
    kullaniciMenusu();
  }
}

void kayitOl() {
  baslikYazdir("KAYIT OL");
  stdout.write("👤 Ad Soyad: ");
  String newNameSurname = stdin.readLineSync()!;
  stdout.write("🔑 Şifre: ");
  String newPassword = stdin.readLineSync()!;
  stdout.write("🏠 Adres: ");
  String newAddress = stdin.readLineSync()!;
  stdout.write("📱 Telefon: ");
  String newPhone = stdin.readLineSync()!;
  stdout.write("📧 E-posta: ");
  String newEmail = stdin.readLineSync()!;

  nameSurname = newNameSurname;
  address = newAddress;
  phone = newPhone;
  email = newEmail;
  password = newPassword;
  isLoggedIn = true;
  
  print("\n✅ Kayıt başarılı!");
  kullaniciMenusu();
}

void cikisYap() {
  isLoggedIn = false;
  print("\n👋 Güle güle!");
}

void kullaniciMenusu() {
  baslikYazdir("KULLANICI MENÜSÜ");
  print("1- Giriş Yap");
  print("2- Kayıt Ol");
  if (isLoggedIn) {
    print("3- Çıkış Yap");
  }
  cizgiYazdir();
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      girisYap();
      break;
    case "2":
      kayitOl();
      break;
    case "3":
      if (isLoggedIn) cikisYap();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      kullaniciMenusu();
  }
}

void alisveris() {
  baslikYazdir("HORASAN MAĞAZASINA HOŞGELDİNİZ");
  kullaniciMenusu();
  if (isLoggedIn) {
    print("\n👋 Hoş geldiniz $nameSurname!");
    urunMenusu();
  } else {
    print("\n⚠️ Lütfen giriş yapın!");
  }
}

void urunMenusu() {
  baslikYazdir("ÜRÜN KATEGORİLERİ");
  print("1- Kadın");
  print("2- Erkek");
  print("3- Çocuk");
  print("\n" + "-" * 50);
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      kadinUrunleri();
      break;
    case "2":
      erkekUrunleri();
      break;
    case "3":
      cocukUrunleri();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      urunMenusu();
  }
}

void kadinUrunleri() {
  baslikYazdir("KADIN ÜRÜNLERİ");
  print("1- Gece Elbisesi - ${geceElbisesiFiyat}₺");
  print("2- Bluz - ${bluzFiyat}₺");
  print("3- Etek - ${etekFiyat}₺");
  print("4- Topuklu Ayakkabı - ${topukluAyakkabiFiyat}₺");
  print("5- El Çantası - ${elCantasiFiyat}₺");
  print("6- İptal");
  cizgiYazdir();
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      urunSecimi("Gece Elbisesi", geceElbisesiFiyat);
      break;
    case "2":
      urunSecimi("Bluz", bluzFiyat);
      break;
    case "3":
      urunSecimi("Etek", etekFiyat);
      break;
    case "4":
      urunSecimi("Topuklu Ayakkabı", topukluAyakkabiFiyat);
      break;
    case "5":
      urunSecimi("El Çantası", elCantasiFiyat);
      break;
    case "6":
      urunMenusu();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      kadinUrunleri();
  }
}

void erkekUrunleri() {
  baslikYazdir("ERKEK ÜRÜNLERİ");
  print("1- Takım Elbise - ${takimElbiseFiyat}₺");
  print("2- Günlük Gömlek - ${gunlukGomlekFiyat}₺");
  print("3- Deri Ceket - ${deriCeketFiyat}₺");
  print("4- Klasik Ayakkabı - ${klasikAyakkabiFiyat}₺");
  print("5- Kol Saati - ${kolSaatiFiyat}₺");
  print("6- İptal");
  cizgiYazdir();
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      urunSecimi("Takım Elbise", takimElbiseFiyat);
      break;
    case "2":
      urunSecimi("Günlük Gömlek", gunlukGomlekFiyat);
      break;
    case "3":
      urunSecimi("Deri Ceket", deriCeketFiyat);
      break;
    case "4":
      urunSecimi("Klasik Ayakkabı", klasikAyakkabiFiyat);
      break;
    case "5":
      urunSecimi("Kol Saati", kolSaatiFiyat);
      break;
    case "6":
      urunMenusu();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      erkekUrunleri();
  }
}

void cocukUrunleri() {
  baslikYazdir("ÇOCUK ÜRÜNLERİ");
  print("1- Çizgi Film Tişört - ${cizgiFilmTisortFiyat}₺");
  print("2- Tulum - ${tulumFiyat}₺");
  print("3- Spor Ayakkabı - ${sporAyakkabiFiyat}₺");
  print("4- Sırt Çantası - ${sirtCantasiFiyat}₺");
  print("5- Oyuncak Seti - ${oyuncakSetiFiyat}₺");
  print("6- İptal");
  cizgiYazdir();
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      urunSecimi("Çizgi Film Tişört", cizgiFilmTisortFiyat);
      break;
    case "2":
      urunSecimi("Tulum", tulumFiyat);
      break;
    case "3":
      urunSecimi("Spor Ayakkabı", sporAyakkabiFiyat);
      break;
    case "4":
      urunSecimi("Sırt Çantası", sirtCantasiFiyat);
      break;
    case "5":
      urunSecimi("Oyuncak Seti", oyuncakSetiFiyat);
      break;
    case "6":
      urunMenusu();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      cocukUrunleri();
  }
}

void urunSecimi(String selectedItem, int itemPrice) {
  baslikYazdir("ÜRÜN SEÇİMİ: $selectedItem");
  stdout.write("🛍️ Miktar: ");
  int quantity = int.parse(stdin.readLineSync()!);
  totalQuantity += quantity;
  totalPrice += itemPrice * quantity;
  item = selectedItem;
  print("\n✅ Ürün sepete eklendi!");
  kargoMenusu();
}

void odemeMenusu() {
  baslikYazdir("ÖDEME YÖNTEMİ");
  print("1- Kredi Kartı");
  print("2- Banka Kartı");
  print("3- İptal");
  print("\n" + "-" * 50);
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      odemeYap("Kredi Kartı");
      break;
    case "2":
      odemeYap("Banka Kartı");
      break;
    case "3":
      urunMenusu();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      odemeMenusu();
  }
}

void odemeYap(String selectedPaymentMethod) {
  paymentMethod = selectedPaymentMethod;
  totalPrice += cargoPrice;
  baslikYazdir("KART BİLGİLERİ");
  stdout.write("💳 Kart Numarası: ");
  String cardNumber = stdin.readLineSync()!;
  stdout.write("📅 Son Kullanma Tarihi (AA/YY): ");
  String cardExpirationDate = stdin.readLineSync()!;  
  stdout.write("🔒 CVV: ");
  String cardCVV = stdin.readLineSync()!;
  if (cardNumber.length == 16 && cardExpirationDate.length == 5 && cardCVV.length == 3) {
    print("\n✅ Ödeme başarılı!");
    faturaOlustur();
  } else {
    print("\n❌ Geçersiz kart bilgileri!");
    odemeMenusu();
  }
}

void kargoMenusu() {
  baslikYazdir("KARGO SEÇİMİ");
  print("1- Standart Kargo - ${standartKargoFiyat}₺");
  print("2- Hızlı Kargo - ${hizliKargoFiyat}₺");
  print("3- Ücretsiz Kargo - ${ucretsizKargoFiyat}₺");
  print("4- İptal");
  cizgiYazdir();
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      cargoPrice = standartKargoFiyat;
      odemeMenusu();
      break;
    case "2":
      cargoPrice = hizliKargoFiyat;
      odemeMenusu();
      break;
    case "3":
      cargoPrice = ucretsizKargoFiyat;
      odemeMenusu();
      break;
    case "4":
      urunMenusu();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
      kargoMenusu();
  }
}

void sepetiGoster() {
  baslikYazdir("SEPETİM");
  print("🛍️ Ürün: $item");
  print("📦 Miktar: $totalQuantity");
  print("💰 Toplam Tutar: $totalPrice₺");
  print("🚚 Kargo Ücreti: $cargoPrice₺");
  print("💵 Genel Toplam: ${totalPrice + cargoPrice}₺");
}

void odemeYonteminiGoster() {
  print("\n💳 Ödeme Yöntemi: $paymentMethod");
}

void faturaOlustur() {
  baslikYazdir("FATURA");
  sepetiGoster();
  odemeYonteminiGoster();
  print("\n✅ Fatura oluşturuldu!");
  alisveriseDevamEt();
}

void alisveriseDevamEt() {
  baslikYazdir("DEVAM ET");
  print("1- Alışverişe Devam Et");
  print("2- Çıkış Yap");
  print("\n" + "-" * 50);
  
  stdout.write("Seçiminiz: ");
  String select = stdin.readLineSync()!;
  switch (select) {
    case "1":
      urunMenusu();
      break;
    case "2":
      cikisYap();
      break;
    default:
      print("\n❌ Geçersiz seçim!");
  }
}

