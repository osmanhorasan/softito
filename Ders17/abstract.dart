void main(List<String> args) {
  
  Daire daire = Daire(5);
  print("Dairenin Alanı: ${daire.alanHesapla()}");
  print("Dairenin Çevresi: ${daire.cevreHesapla()}");
  Kare kare = Kare(4);
  print("Karenin Alanı: ${kare.alanHesapla()}");
  print("Karenin Çevresi: ${kare.cevreHesapla()}");
  Dikdortgen dikdortgen = Dikdortgen(3, 6); 
  print("Dikdörtgenin Alanı: ${dikdortgen.alanHesapla()}");
  print("Dikdörtgenin Çevresi: ${dikdortgen.cevreHesapla()}");
  

}

abstract class Sekil {

  double alanHesapla();
  double cevreHesapla();
}

class Daire extends Sekil {
  double yaricap;

  Daire(this.yaricap);

  @override
  double alanHesapla() {
    return 3.14 * yaricap * yaricap;
     
  }

  @override
  double cevreHesapla() {
    return 2 * 3.14 * yaricap;
  
  }
}

class Kare extends Sekil {
  double kenar;

  Kare(this.kenar);

  @override
  double alanHesapla() {
    return kenar * kenar;
  }

  @override
  double cevreHesapla() {
    return 4 * kenar;
  }
}

class Dikdortgen extends Sekil {
  double kisaKenar;
  double uzunKenar;
  Dikdortgen(this.kisaKenar, this.uzunKenar);
  @override
  double alanHesapla() {
    return kisaKenar * uzunKenar;
  }
  
  @override
  double cevreHesapla() {
    return 2 * (kisaKenar + uzunKenar);
  }
}