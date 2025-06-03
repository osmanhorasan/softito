class CemberDaire {
  double _pi = 3.14;
  double _yaricap = 0;

  CemberDaire(double yaricap) {
    _yaricapKontrol = yaricap; // Yarıçap kontrolü yapılarak atanır
  }
  // Getter for _pi
  double get pi => _pi; // Getter for _pi

  double get yaricap => _yaricap; // Getter for _yaricap

  // Yarıçap kontrolü yapan setter
  // Eğer yarıçap 0'dan küçükse, yarıçap 1 olarak atanır

  set _yaricapKontrol(double value) {
    if (value > 0) {
      _yaricap = value; // Geçerli yarıçap atanır
    } else {
      _yaricap = 1; // Geçersiz yarıçap ise 0 olarak atanır
    }
  }

  // Çemberin çevresini hesaplayan fonksiyon
  double cevreHesapla() {
    return 2 * _pi * _yaricap; // Çemberin çevresi: 2 * pi * yarıçap
  }

  // Dairenin alanını hesaplayan fonksiyon
  double alanHesapla() {
    return _pi * _yaricap * _yaricap; // Dairenin alanı: pi * yarıçap^2
  }
}
