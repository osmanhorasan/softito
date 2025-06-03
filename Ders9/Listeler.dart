
void main(List<String> args) {
   /*
   Listeler

   filled // dolu liste oluşturma

   */

  List<String> isimler = List.filled(5, "ali");
  isimler[0] = "ahmet";
  isimler[1] = "mehmet";
  isimler[2] = 5.toString();
  isimler[3] = "fatma";
  isimler[4] = "ali";
  print(isimler);

  List<int> sayilar2 = List.filled(5, 5);
  sayilar2[0] = 10;
  sayilar2[1] = 20;
  sayilar2[2] = 30;
  sayilar2[3] = 40;
  sayilar2[4] = 50;
  print(sayilar2);

  List<int> sayilar3 = List.filled(5, 0, growable: true);
  sayilar3[0] = 10;
  sayilar3[1] = 20;
  sayilar3[2] = 30;
  print(sayilar3);

  List<String> Meyveler = List.filled(5, "");
  Meyveler[0] = "armut";
  Meyveler[1] = "kiraz";
  Meyveler[2] = "muz";
  Meyveler[3] = "limon";
  Meyveler[4] = "kivi";
  print(Meyveler);

  List karisik = List.filled(5, 0);
  karisik[0] = "Ahmet";
  karisik[1] = 10;
  karisik[2] = 10.5;
  karisik[3] = true;
  karisik[4] = false;
  print(karisik);

  List<dynamic> karisik2 = List.filled(5, 0);
  karisik2[0] = "Osman";
  karisik2[1] = 10;
  karisik2[2] = 10.5;
  karisik2[3] = true;
  karisik2[4] = false;
  print(karisik2);

  // dynamic liste int kullanılabilir Fakat hata alınır.
  List<dynamic> karisik3 = List<dynamic>.filled(5, 8);
  karisik2[0] = "Mehmet";
  karisik2[1] = 10;
  karisik2[2] = 10.5;
  karisik2[3] = true;
  karisik2[4] = false;
  print(karisik3);

  List<int> sayilar4 = List<int>.filled(5, 0);
  sayilar4[0] = 10;
  sayilar4[1] = 20;
  sayilar4[2] = 30;
  sayilar4[3] = 40;
  sayilar4[4] = 50;
  print(sayilar4);


  List<int> sayilar5 = List<int>.filled(5, 0);
  sayilar5[0] = 10;
  sayilar5[1] = 20;
  sayilar5[2] = 30;
  sayilar5[3] = 40;
  sayilar5[4] = 50;
  
  for (int i = 0; i < sayilar5.length; i++) {
    print("index: $i, değer: ${sayilar5[i]}");
  }
  print("--------------------------------");

  for (int i in sayilar5) {
    print("değer: $i");
  }

  List<int> sayilar6 = List<int>.filled(5, 0 , growable: true);

  sayilar6[0] = 10;
  sayilar6[1] = 20;
  sayilar6[2] = 30;
  sayilar6[3] = 40;
  sayilar6[4] = 50;
  print(sayilar6);
  print(sayilar6.length); // 5
  //print(sayilar6.remove(10));  10 değerini siler fakat sabit liste olduğu için hata alınır.
  //print(sayilar6);

  List<int> sayilar7 = [];
  //sayilar7.length = 5;
  sayilar7.add(10);
  sayilar7.add(20);
  sayilar7.add(30);
  sayilar7.add(40);
  print(sayilar7);

  List<int> sayilar8 = [1,2,3,4,5];
  print(sayilar8);

  List<String> sehirler = List.empty(growable: true);
  sehirler.add("Ankara");
  sehirler.add("İstanbul");
  sehirler.add("İzmir");
  sehirler.add("Adana");
  sehirler.add("Adıyaman");
  print(sehirler);
  print(sehirler.length); // 5

  List<int> sayilar9 = [1,2,3,4,5];
  for (var i = 0; i < sayilar9.length; i++) {
    print("index: $i, değer: ${sayilar9[i]}");
  }

  print(sayilar9.first);
  print(sayilar9.removeAt(2)); // 2. indexteki elemanı siler
  print(sayilar9);

  List<String> programlamaDilleri = ["Python", "Java", "C#", "JavaScript", "Ruby"];
  for (var i = 0; i < programlamaDilleri.length; i++) {
    print("index: $i, değer: ${programlamaDilleri[i]}");
  }
  print(programlamaDilleri.isEmpty); // false
  print(programlamaDilleri.isNotEmpty); // true
  print(programlamaDilleri.remove("Java")); // Java listeden siler
  print(programlamaDilleri);

  List<int> asalSayilar = []; 

  print(asalSayilar.isEmpty); // true
  print(asalSayilar.isNotEmpty); // false

  List<int> sayilar10 = [1,2,3,4,5]; 
  sayilar10.clear(); // listeyi temizler
  print(sayilar10); // []

  List<int> sayilar11 = [1,2,3,4,5];
  sayilar11.contains(3); // true
  sayilar11.contains(6); // false
  print(sayilar11);

  List<String> Urunler = ["Elma", "Armut", "Kiraz", "Muz", "Kivi"];
  if(Urunler.contains("Elma")){
    print("Elma listede var");
  }else{
    print("Elma listede yok");
  }

  

  List<String> yemekler = ["Pizza", "Hamburger", "Taco", "Kebab", "Pasta"];
  print(yemekler.elementAt(0)); // Pizza
  print(yemekler.indexOf("Hamburger")); // 1
  if(yemekler.indexOf("Kebab") != -1){
    print("Kebab listede var");
  }else{
    print("Kebab listede yok");
  }

  List<String> renkler = ["Kırmızı", "Mavi", "Yeşil", "Sarı", "Turuncu"];
  print(renkler.last); // Turuncu
  renkler.shuffle(); // rastgele karıştırır
  print(renkler);
  
  
  List<int> sayilar12 = [1,2,3,4,5];
  Set<int> sayilar13 = Set();
  sayilar13.addAll(sayilar12);


  
}