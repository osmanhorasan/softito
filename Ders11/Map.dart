void main(List<String> args) {
  basla();

  //Map<String, String> ilceler = {};
  //ilceler["ds"] = "Bünyan";
}

void basla() {
  kisiselBilgileriYazdir(kisiselBilgiler);
  arabayiYazdir(araclar);
}

Map<String, dynamic> kisiselBilgiler = {
  "isim": "Osman",
  "soyIsim": "Horasan",
  "yas": 30,
  "sehirId": 38,
};

Map<int, String> sehirler = {38: "Kayseri"};

void kisiselBilgileriYazdir(Map<String, dynamic> veriler) {
  print("İsim: ${veriler["isim"]}");
  print("Soyisim: ${veriler["soyIsim"]}");
  print("Yaş: ${veriler["yas"]}");
  print("İsim: ${sehirler[veriler["sehirId"]]}");

  for (String key in veriler.keys) {
    print(veriler[key]);
  }
}

Map<String, dynamic> araclar = {
  "name": "Peguet",
  "model": "307",
  "year": 2004,
  "price": 370,
  "currency": "₺",
  "yakitTuru": "Dizel",
  "vitesTuru": "Manuel"
};

void arabayiYazdir(Map<String, dynamic> araclar) {
  for (String key in araclar.keys) {
    print(araclar[key]);
  }
  for (String value in araclar.values) {
    print(value);
  }

  for (MapEntry<String, dynamic> element in araclar.entries) {
    print("Key: ${element.key}");
    print("Value: ${element.value}");
  }

  for (var element in araclar.entries) {
    print("Key: ${element.key}");
    print("Value: ${element.value}");
  }

  if (araclar.containsKey("model")) {
    print("Bu Key Var");
  }
}
