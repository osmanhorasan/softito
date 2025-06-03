class Blog {
  String kategori = "Genel"; // Blog kategorisi
  String yazar = "Bilinmiyor"; // Blog yazarı
  // Blog yazısının yayınlanma durumu
  bool yayinlandiMi = false;

  // Blog sınıfı, temel blog işlevselliğini sağlar
  void yaziYaz() {
    print("Blog: Yazı yazılıyor...");
  }

  // Blog yazısını yayınlar
  void yaziYayinla() {
    print("Blog: Yazı yayınlandı.");
    yayinlandiMi = true;
  }
}

// KişiselBlog ve TeknolojiBlogu sınıfları, Blog sınıfından türetilir
class KisiselBlog extends Blog {
  KisiselBlog() {
    kategori = "Kişisel"; // Kişisel blog kategorisi
    yazar = "Ayşe Yılmaz"; // Kişisel blog yazarı
    yayinlandiMi = false; // Başlangıçta yayınlanmamış
  }

  // Kişisel bloga özgü bir metot
  void gunlukYazisiEkle() {
    print("Kişisel Blog: Günlük yazısı eklendi.");  
  }

 // Kişisel blog yazısı yazma işlemi
  @override
  void yaziYayinla() {
    print("Kişisel Blog: Yazı yayınlandı.");
    yayinlandiMi = true;
  }
}

// TeknolojiBlogu sınıfı, Blog sınıfından türetilir
class TeknolojiBlogu extends Blog {
  TeknolojiBlogu() {
    kategori = "Teknoloji";
    yazar = "Mehmet Demir";
    yayinlandiMi = false;
  }

  // Teknoloji bloguna özgü bir metot
  void yazilimIncelemesiYap() {
    print("Teknoloji Blogu: Yazılım incelemesi yapılıyor.");
  }

  @override
  void yaziYaz() {
    print("Teknoloji Blogu: Yazı yazılıyor...");
  }
}

void main() {
  KisiselBlog kisisel = KisiselBlog();
  kisisel.yaziYaz();
  kisisel.yaziYayinla();
  kisisel.gunlukYazisiEkle();

  print("\n");

  TeknolojiBlogu teknoloji = TeknolojiBlogu();
  teknoloji.yaziYaz();
  teknoloji.yaziYayinla();
  teknoloji.yazilimIncelemesiYap();
}
