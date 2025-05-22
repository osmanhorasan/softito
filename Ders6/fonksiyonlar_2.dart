import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  /*
      Fonksiyon Nedir ? :
      - Bir işi yapan kod bloklarıdır.
      - Birden fazla kere kullanılabilir.
      - Parametre alabilir.
      - Görevini tamamlayınca bir değer döndürebilir.
      - Fonksiyonun içindeki değişkenler sadece fonksiyon içinde geçerlidir.
      - Fonksiyonun dışında aynı isimde değişken tanımlanabilir.

      Fonksiyon Parametreleri :
      - Fonksiyonun içine gönderilen değerlerdir.
      - Fonksiyonun içinde kullanılır.
      - Fonksiyonun içinde değiştirilebilir.

      Fonksiyon Dönüş Değeri (Return Value) :
      - Fonksiyonun görevini tamamlayınca döndürdüğü değerdir.
      - Fonksiyonun dışında kullanılabilir.
      - Fonksiyonun dışında değiştirilebilir.

      Fonksiyon 4'e ayrılır :
      - Geri Deger Almayan Fonksiyonlar
      - Geri Deger Alan Fonksiyonlar
      - Parametre Almayan Fonksiyonlar
      - Parametre Alan Fonksiyonlar

      Fonksiyon Parçaları :
      - Fonksiyon Adı : Fonksiyonun adını belirlemek için kullanılır.
      - Fonksiyon Parametreleri : Fonksiyonun parametrelerini belirlemek için kullanılır.
      - Fonksiyon Gövdesi : Fonksiyonun içindeki kodları belirlemek için kullanılır.
      - Fonksiyon Dönüş Değeri : Fonksiyonun dönüş değerini belirlemek için kullanılır.

      Fonksiyon Çağırma :
      - Fonksiyonun adını yazıp, parantez içine parametreleri yazıp, çağırılır.
      - Fonksiyonun adını yazıp, parantezi kapatılır.

      Fonksiyon Tanımlama : 
      - void keyword'u ile başlar.
      - Fonksiyonun adı yazılır.
      - Parantez içine parametreler yazılır.
      - Parantezin içine yazılan parametrelerin tipleri yazılır.
      - Parantezin dışına yazılan parametrelerin tipleri yazılır.
      - Fonksiyonun gövdesi yazılır.
      - Fonksiyonun dönüş değeri yazılır.
   */

  void selamla() {
    print("Merhaba"); // Merhaba mesajı yazdırma
  }

  selamla(); // Fonksiyonu çağırma

  void selamla2(String isim) { 
    print("Merhaba $isim"); // Merhaba mesajı yazdırma
  }
 
  selamla2("Ahmet"); // Fonksiyonu çağırma

  stdout.write("İsminizi giriniz : "); // Kullanıcıdan isim alma
  String isim = stdin.readLineSync()!; // Kullanıcıdan isim alma
  selamla2(isim); // Fonksiyonu çağırma

  void toplama() {
    int sayi1 = 10; // Değişken tanımlama
    int sayi2 = 20; // Değişken tanımlama
    int toplam = sayi1 + sayi2; // Toplama işlemi
    print(toplam); // Sonucu yazdırma
  }

  toplama();

  void toplama2(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2; // Toplama işlemi
    print(toplam); // Sonucu yazdırma
  }
  toplama2(10, 20); // Fonksiyonu çağırma

  stdout.write("Birinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi1 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  stdout.write("İkinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi2 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  toplama2(sayi1, sayi2); // Fonksiyonu çağırma

  void cikarma(int sayi1, int sayi2) {
    int fark = sayi1 - sayi2; // Çıkarma işlemi
    print(fark); // Sonucu yazdırma
  }
  cikarma(10, 20); // Fonksiyonu çağırma

  stdout.write("Birinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi3 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  stdout.write("İkinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi4 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  cikarma(sayi3, sayi4); // Fonksiyonu çağırma

  void carpma(int sayi1, int sayi2) {
    int carpim = sayi1 * sayi2; // Çarpma işlemi
    print(carpim); // Sonucu yazdırma
  }
  carpma(10, 20); // Fonksiyonu çağırma

  stdout.write("Birinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi5 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  stdout.write("İkinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi6 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  carpma(sayi5, sayi6); // Fonksiyonu çağırma

  void bolme(int sayi1, int sayi2) {
    double bolum = sayi1 / sayi2; // Bolme işlemi
    print(bolum); // Sonucu yazdırma
  }
  bolme(10, 20); // Fonksiyonu çağırma

  stdout.write("Birinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi7 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  stdout.write("İkinci sayıyı giriniz : "); // Kullanıcıdan sayı alma
  int sayi8 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  bolme(sayi7, sayi8); // Fonksiyonu çağırma

  void sayiYazdir() {
    for (int i = 0; i < 100; i++) {
      print(i); // Sayıyı yazdırma
    }
  }
  sayiYazdir(); // Fonksiyonu çağırma

  void sayiYazdir2(int sayi) {
    for (int i = 0; i < sayi; i++) {
      print(i); // Sayıyı yazdırma
    }
  }
  sayiYazdir2(10); // Fonksiyonu çağırma

  void basDegerAl(int sayi) {
    for (int i = 0; i < sayi; i++) {
      print(i); // Sayıyı yazdırma
    }
  }
  basDegerAl(10); // Fonksiyonu çağırma

  stdout.write("Bir sayı giriniz : "); // Kullanıcıdan sayı alma
  int sayi9 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  basDegerAl(sayi9); // Fonksiyonu çağırma

  void bitDegerAl(int sayi) {
    for (int i = 0; i < sayi; i++) {
      print(i); // Sayıyı yazdırma
    }
  }
  bitDegerAl(10); // Fonksiyonu çağırma

  stdout.write("Bir sayı giriniz : "); // Kullanıcıdan sayı alma
  int sayi10 = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  bitDegerAl(sayi10); // Fonksiyonu çağırma

  void basBitDegerAl(int bas, int bit) {
    for (int i = bas; i <= bit; i++) {
      print(i); // Sayıyı yazdırma
    }
  }
  basBitDegerAl(1, 10); // Fonksiyonu çağırma

  stdout.write("Başlangıç sayısını giriniz : "); // Kullanıcıdan sayı alma
  int bas = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  stdout.write("Bitiş sayısını giriniz : "); // Kullanıcıdan sayı alma
  int bit = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
  basBitDegerAl(bas, bit); // Fonksiyonu çağırma

  void yasHesapla(int dogumYili, int yil){
    int yas = yil - dogumYili; // Yaşınızı hesapla
    print("Yaşınız : $yas"); // Yaşınızı yazdır
    if(yas >= 18){ // Ehliyet alabilirsiniz
      print("Ehliyet Alabilirsiniz"); // Ehliyet alabilirsiniz yazdır
    }else{
      print("Ehliyet Alamazsınız"); // Ehliyet alamazsınız yazdır
    }
  }

  void yilIste(String metin){
    stdout.write("Lütfen $metin giriniz : "); // Kullanıcıdan yıl alma
  }

  while(true){
    yilIste("Dogum Yılınızı"); // Kullanıcıdan dogum yılı alma
    int dogumYili = int.parse(stdin.readLineSync()!); // Kullanıcıdan dogum yılı alma
    yilIste("Hesaplamak istediğiniz yılı"); // Kullanıcıdan yıl alma
    int yil = int.parse(stdin.readLineSync()!); // Kullanıcıdan yıl alma
    yasHesapla(dogumYili, yil); // Fonksiyonu çağırma
    break;
  }

  void yilIste2(String metin){ 
    stdout.write("Lütfen $metin giriniz : "); // Kullanıcıdan yıl alma
  }

  void yasHesapla2(int dogumYili, String secim){
    int yas; // Yaşınızı hesapla
    if(secim == "1"){ // Şu anki yaşınızı bulmak için
      yas = DateTime.now().year - dogumYili; // Şu anki yılınızı bulma
    }else{ // Kendi yılınızı girmek için
      yilIste2("Hesaplamak istediğiniz yılı"); // Kullanıcıdan yıl alma
      int yil = int.parse(stdin.readLineSync()!); // Kullanıcıdan yıl alma
      yas = yil - dogumYili; // Yaşınızı hesapla
    }
    print("Yaşınız : $yas");
    if(yas >= 18){ // Ehliyet alabilirsiniz
      print("Ehliyet Alabilirsiniz"); // Ehliyet alabilirsiniz yazdır
    }
  }

  while(true){
    yilIste2("Dogum Yılınızı"); // Kullanıcıdan dogum yılı alma
    int dogumYili = int.parse(stdin.readLineSync()!);  // Kullanıcıdan dogum yılı alma
    yilIste("Suan ki yaşınızı bulmak için 1  kendiniz yıl girmek için 2"); // Kullanıcıdan secim alma
    String secim = stdin.readLineSync()!; // Kullanıcıdan secim alma
    yasHesapla2(dogumYili, secim); // Fonksiyonu çağırma
    break;
  }

  void tekMiCiftMi(int sayi){
    sayi % 2 == 0 ? print("Çift") : print("Tek"); // Sayı çift ise Çift yazdır, tek ise Tek yazdır
  }
  void pozitifMiNegatifMi(int sayi){
    sayi > 0 ? print("Pozitif") : print("Negatif"); // Sayı pozitif ise Pozitif yazdır, negatif ise Negatif yazdır
  }
  void karekokHesapla(int sayi){
    print(sqrt(sayi)); // Sayının karekökünü hesapla
  }

  void mutlakDegerHesapla(int sayi){
    print(sayi.abs()); // Sayının mutlak değerini hesapla
  }

  void daireAlanHesapla(int yaricap){
    print(pi * pow(yaricap, 2)); // Dairenin alanını hesapla
  }

  void daireCevreHesapla(int yaricap){
    print(2 * pi * yaricap); // Dairenin çevresini hesapla
  } 

  void yamukAlanHesapla(int alt, int ust, int yukseklik){
    print((alt + ust) * yukseklik / 2); // Yamuğun alanını hesapla
  }

  void yamukCevreHesapla(int alt, int ust, int yukseklik){
    print(alt + ust + 2 * yukseklik); // Yamuğun çevresini hesapla
  }


  
  while(true){
    stdout.write("Lütfen bir sayı giriniz : "); // Kullanıcıdan sayı alma
    int sayi = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
    tekMiCiftMi(sayi); // Fonksiyonu çağırma
    pozitifMiNegatifMi(sayi); // Fonksiyonu çağırma
    karekokHesapla(sayi); // Fonksiyonu çağırma
    mutlakDegerHesapla(sayi); // Fonksiyonu çağırma 
    daireAlanHesapla(sayi); // Fonksiyonu çağırma
    daireCevreHesapla(sayi); // Fonksiyonu çağırma
    break;
  }
   while(true){
    stdout.write("Lütfen bir sayı giriniz : "); // Kullanıcıdan sayı alma
    int sayi = int.parse(stdin.readLineSync()!); // Kullanıcıdan sayı alma
    stdout.write("Lütfen Seçim yapınız : 1-TekMiCiftMi 2-PozitifMiNegatifMi 3-KarekokHesapla 4-MutlakDegerHesapla 5-DaireAlanHesapla 6-DaireCevreHesapla : "); // Kullanıcıdan seçim alma
    String secim = stdin.readLineSync()!; // Kullanıcıdan seçim alma
    switch(secim){
      case "1": // Seçim 1 ise
        tekMiCiftMi(sayi); // Fonksiyonu çağırma
        break;
      case "2": // Seçim 2 ise
        pozitifMiNegatifMi(sayi); // Fonksiyonu çağırma
        break;
      case "3": // Seçim 3 ise
        karekokHesapla(sayi); // Fonksiyonu çağırma
        break;
      case "4": // Seçim 4 ise
        mutlakDegerHesapla(sayi); // Fonksiyonu çağırma 
        break;
      case "5": // Seçim 5 ise
        daireAlanHesapla(sayi); // Fonksiyonu çağırma
        break;
      case "6": // Seçim 6 ise
        daireCevreHesapla(sayi); // Fonksiyonu çağırma
        break;
    }
    break;
  }

  

  while(true){  
    stdout.write("Lütfen alt kenarını giriniz : "); // Kullanıcıdan alt kenarı alma
    int alt = int.parse(stdin.readLineSync()!); // Kullanıcıdan alt kenarı alma
    stdout.write("Lütfen üst kenarını giriniz : "); // Kullanıcıdan üst kenarı alma
    int ust = int.parse(stdin.readLineSync()!); // Kullanıcıdan üst kenarı alma
    stdout.write("Lütfen yüksekliğini giriniz : "); // Kullanıcıdan yükseklik alma
    int yukseklik = int.parse(stdin.readLineSync()!); // Kullanıcıdan yükseklik alma
    yamukAlanHesapla(alt, ust, yukseklik); // Fonksiyonu çağırma
    yamukCevreHesapla(alt, ust, yukseklik); // Fonksiyonu çağırma
    break;
  }

  void toplama3(int bas, int bit){
    int toplam = 0;
    for(int i = bas; i <= bit; i++){
      toplam += i; // Sayıları topla
    }
    print(toplam); // Toplamı yazdır
  }
  
  while(true){
    stdout.write("Başlangıç sayısını giriniz : "); // Kullanıcıdan sayı alma
    int bas = int.parse(stdin.readLineSync()!);
    stdout.write("Bitiş sayısını giriniz : "); // Kullanıcıdan sayı alma
    int bit = int.parse(stdin.readLineSync()!);
    toplama3(bas, bit); // Fonksiyonu çağırma
    break;
  }

  void faktoriyelHesapla(int sayi){
    int faktoriyel = 1;
    for(int i = 1; i <= sayi; i++){
      faktoriyel *= i; // Sayıları çarp
    }
    print(faktoriyel); // Faktoriyeli yazdır
  }

  while(true){
    stdout.write("Lütfen bir sayı giriniz : "); // Kullanıcıdan sayı alma
    int sayi = int.parse(stdin.readLineSync()!);
    faktoriyelHesapla(sayi); // Fonksiyonu çağırma
    break;
  }
  

  void daireselHesapla(int yaricap , [double pi = 3.14]){ // pi değişkeni varsayılan değer 3.14
    print(2 * pi * yaricap); // Dairenin çevresini hesapla
    print(pi * pow(yaricap, 2)); // Dairenin alanını hesapla
  }
  
  while(true){
    stdout.write("Lütfen yarıçapı giriniz : "); // Kullanıcıdan yarıçap alma
    int yaricap = int.parse(stdin.readLineSync()!);
    daireselHesapla(yaricap); // Fonksiyonu çağırma
    break;
  }

  void dortgenKareHesapla(String secim , int kenar , [int kenar2=1]){
    if(secim == "dikdörtgen"){
      print(4 * kenar); // Dikdörtgenin çevresini hesapla
    }
    if(secim == "kare"){
      print(pow(kenar, 2)); // Karein alanını hesapla
    }
    
  }
  
  while(true){
    stdout.write("Hangi şekil hesaplaması yapılacak ? : "); // Kullanıcıdan şekil seçimi alma
    String secim = stdin.readLineSync()!; // Kullanıcıdan şekil seçimi alma
    if(secim == "dikdörtgen"){
      stdout.write("Lütfen kenarı giriniz : "); // Kullanıcıdan kenar alma
      int kenar = int.parse(stdin.readLineSync()!);
      stdout.write("Lütfen kenar2'yi giriniz : "); // Kullanıcıdan kenar2 alma
      int kenar2 = int.parse(stdin.readLineSync()!);
      dortgenKareHesapla(secim, kenar, kenar2); // Fonksiyonu çağırma
    }
    if(secim == "kare"){
      stdout.write("Lütfen kenarı giriniz : "); // Kullanıcıdan kenar alma
      int kenar = int.parse(stdin.readLineSync()!);
      dortgenKareHesapla(secim, kenar); // Fonksiyonu çağırma
    }
    break;
  }


  int yasHesapla3(int dogumYili){
    return DateTime.now().year - dogumYili; // Yaşınızı hesapla
  }

  void ehliyetAlabilirMi(int yas){
    if(yas >= 18){
      print("Ehliyet Alabilirsiniz"); // Ehliyet alabilirsiniz yazdır
    }else{
      print("Ehliyet Alamazsınız"); // Ehliyet alamazsınız yazdır
    }
  }

  while(true){
    stdout.write("Lütfen doğum yılınızı giriniz : "); // Kullanıcıdan doğum yılı alma
    int dogumYili = int.parse(stdin.readLineSync()!);
    int yas = yasHesapla3(dogumYili); // Fonksiyonu çağırma
    ehliyetAlabilirMi(yas); // Fonksiyonu çağırma
    break;
  }
  
  
}