class Musteri {
  int _id; // private değişken

  // Yapıcı (Constructor)
  Musteri(this._id);

  // Getter for _id
  void _musteriNoControl(int _id) {
    if (_id > 0)
      this._id = _id; // kontrol başarılı ise id atanır
    else if (_id == -1)
      this._id = 0; // -1 ise id 0 olarak atanır
    else
      return; // geçersiz id ise hiçbir şey yapma
  }

  void set id(int value) => _musteriNoControl(value); // ID kontrolü yapılarak atanır
  int get id => _id; // ID'yi döndürür

  // Genel fonksiyon
  void musteriBilgisiYazdir() {
    print("Musteri ID: $id"); // ID'yi yazdırır
  }
}
