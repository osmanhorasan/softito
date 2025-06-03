void main(List<String> args) {
  List<EnemyCharacter> dusmanKarakterler = [
    Zombi(),
    LAvCanavari(),
    Yarasalar(),
  ];

  List<AtesEdebilenler> atesEdebilenDusmanlar = [Zombi(), LAvCanavari()];

  for (var dusman in dusmanKarakterler) {
    dusman.yemekYemek();
    dusman.canBilgisi();
    dusman.karakterBilgisi();
  }


  for (var atesEdebilenDusman in atesEdebilenDusmanlar) {
    atesEdebilenDusman.atesEt();
  }
}

abstract class EnemyCharacter {
  void yemekYemek();
  void canBilgisi();
  void karakterBilgisi();
}

abstract interface class AtesEdebilenler {
  void atesEt();
}

class Zombi extends EnemyCharacter implements AtesEdebilenler {
  @override
  void yemekYemek() {
    print("Zombi yemek yiyor.");
  }

  @override
  void canBilgisi() {
    print("Zombinin canı: 100");
  }

  @override
  void karakterBilgisi() {
    print("Bu bir zombidir.");
  }

  @override
  void atesEt() {
    // TODO: implement atesEt
  }
}

class LAvCanavari extends EnemyCharacter implements AtesEdebilenler {
  @override
  void yemekYemek() {
    print("Lav canavarı yemek yiyor.");
  }

  @override
  void canBilgisi() {
    print("Lav canavarının canı: 150");
  }

  @override
  void karakterBilgisi() {
    print("Bu bir lav canavarıdır.");
  }

  @override
  void atesEt() {
    print("Lav canavarı ateş ediyor.");
  }
}

class Yarasalar extends EnemyCharacter {
  @override
  void yemekYemek() {
    print("Yarasalar yemek yiyor.");
  }

  @override
  void canBilgisi() {
    print("Yarasaların canı: 80");
  }

  @override
  void karakterBilgisi() {
    print("Bu bir yarasadır.");
  }
}
