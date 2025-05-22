/*
  Set, List gibi bir koleksiyon yapısıdır.
  Set, List'ten farklı olarak tekrar eden elemanları yok eder.
  Set, List'ten farklı olarak indexleme yapılmaz.
  Set, List'ten farklı olarak sıralama yapılmaz.
*/

void main(List<String> args) {
  Set<int> sayilar = Set<int>();
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  sayilar.add(5);
  print(sayilar);

  Set<String> renkler = Set<String>();
  renkler.add("Kırmızı");
  renkler.add("Mavi");
  renkler.add("Yeşil");
  renkler.add("Sarı");
  renkler.add("Turuncu");
  print(renkler);

  Set<int> sayilar2 = Set<int>.from([1, 2, 3, 4, 5]);
  print(sayilar2);

  Set<int> sayilar3 = Set<int>.from([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  print(sayilar3);
  for (var element in sayilar3) {
    print(element);
  }

  Set<int> sayilar4 = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  print(sayilar4);
  for (var element in sayilar4) {
    print(element);
  }

  sayilar4.remove(1); // 1 elemanını siler
  print(sayilar4);

  sayilar4.clear(); // tüm elemanları siler
  print(sayilar4);
}
