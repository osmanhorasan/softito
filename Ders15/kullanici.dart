// Kullanıcılar sisteme ad-soyad, kullanıcı adı, mail ve şifreleri ile kayıt olsun.Özellikle kullanıcı adı, şifre ve mail boş kalmasın, ad-soyad kısmı 6 karakterden az olmasın ve tabi boş kalmasın. Kullanıcı bilgilerini doğru girdiyse bir listeye eklensin. ekranda giriş yapmak için 1' e şifreni unuttuysan 2 ye tıklayın desin.

// Eğer 1 e basarsa kullanıcı adı ve şifre alın. ve listede böyle bir kullanıcı varsa Hoşgeldiniz Bilal Karademir desin eğer 2 ye basarsa kullanıcıya mail adresinizi giriniz yazsın eğer mail adresi doğru ise kullanıcının karşısına şifresi yazılsın.

// 1 Kullanici adında sınıf oluştur.
// 2 değişkenler oluştur hepsi private olsun
// 3 kontrollere dıkkat et direk kurucudan alamazsın :)
// 4 her işlem bir metod olsun.
// 5 kontrol de set cagırmada get olduğunu unutma



class Kullanici {
  String? _adSoyad;
  String? _kullaniciAdi;
  String? _mail;
  String? _sifre;

  Kullanici(this._adSoyad, this._kullaniciAdi, this._mail, this._sifre){
    kullaniciAdi = _kullaniciAdi; // Kullanıcı adı boş olamaz
    mail = _mail; // Mail boş olamaz  
    adSoyad = _adSoyad; // Ad soyad en az 6 karakter olmalı
    sifre = _sifre; // Şifre boş olamaz
  }

  Kullanici.login(this._kullaniciAdi, this._sifre , List<Kullanici> kullaniciListesi) {
    // Giriş yapma işlemi
    for (var kullanici in kullaniciListesi) {
      if (kullanici.kullaniciAdi == _kullaniciAdi && kullanici.sifre == _sifre) {
        print("Hoşgeldiniz ${kullanici.adSoyad}");
        return; // Kullanıcı bulundu, hoş geldiniz mesajı gösterilir
      }
    }
    print("Kullanıcı adı veya şifre yanlış."); // Kullanıcı bulunamazsa hata mesajı gösterilir
  }

  // Getter ve setter metodları
  String? get adSoyad => _adSoyad;
  String? get kullaniciAdi => _kullaniciAdi;
  String? get mail => _mail;
  String? get sifre => _sifre;

  set adSoyad(String? value) {
    if (value == null || value.length < 6) {
      print("Ad soyad en az 6 karakter olmalıdır.");
      return ; // Ad soyad en az 6 karakter olmalı, hata mesajı gösterilir
    }
    _adSoyad = value;
  }
  set kullaniciAdi(String? value) {
    if (value == null || value.isEmpty) {
      print("Kullanıcı adı boş bırakılamaz.");
      return; // Kullanıcı adı boş olamaz, hata mesajı gösterilir
    }
    _kullaniciAdi = value;
  }
  set mail(String? value) {
    if (value == null || value.isEmpty) {
      print("Mail boş bırakılamaz.");
      return; // Mail boş olamaz, hata mesajı gösterilir
    }
    _mail = value;
  }
  set sifre(String? value) {
    if (value == null || value.isEmpty) {
      print("Şifre boş bırakılamaz.");
      return; // Şifre boş olamaz, hata mesajı gösterilir
    }
    _sifre = value;
  }

  @override
  String toString() {
    return 'Kullanıcı: $_adSoyad, Kullanıcı Adı: $_kullaniciAdi, Mail: $_mail';
  }
}