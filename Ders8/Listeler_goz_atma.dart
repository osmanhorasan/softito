/*
Listeler, aynı türden birden fazla veriyi tek bir değişken altında gruplayan yapılardır.



List<int> sayilar = [1, 2, 3, 4, 5];
List<String> isimler = ["Ahmet", "Mehmet", "Ayşe", "Fatma"];
List<double> ondalikliSayilar = [1.5, 2.5, 3.5, 4.5, 5.5];

List<int> sayilar2 = List.filled(5, 0);
List<int> sayilar3 = List.generate(5, (index) => index * 2);

List<dynamic> karakterler = ["a", "b", "c", 1, 2, 3];

List Methodları 

add() // Listeye eleman ekleme
length // Liste kaç elemanlı
isEmpty // Liste boş mu kontrol et
first // Liste başındaki eleman
last // Liste sonundaki eleman
contains() // Listede belirli bir eleman var mı kontrol et
reverse() // Listeyi ters çevir



Diziler

var sayilar4 = <int>[];
sayilar4.add(1);



*/

void main() {
  List<int> sayilar = <int>[];
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);

  int sayi = sayilar[0];
  print(sayi);

  List<dynamic> karakterler = ["a", "b", "c", 1, 2, 3];
  print(karakterler);

  var rakamlar = [1, 2, 3, 4, 5];
  print(rakamlar);


  // List Methodları

  // isEmpty
  print(sayilar.isEmpty);

  // length
  print(sayilar.length);

  // first
  print(sayilar.first);

  // last
  print(sayilar.last);

  // contains
  print(sayilar.contains(1));

  // reverse
  Iterable<int> tersSayilar = sayilar.reversed;
  print(tersSayilar);
  
  
  
  
  
}
