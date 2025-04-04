import 'dart:math';

class Uyelik {
  String _kullaniciAdi = "";

  String getKullaniciAdi() {
    return this._kullaniciAdi;
  }

  void setKullaniciAdi(String kullaniciAdi) {
    this._kullaniciAdi = kullaniciAdi;
  }

  bool uyesil() {
    if (_uyeVarmi()) {
      print("Üye Siliniyor...");
      return true;
    } else {
      print("Üye Bulunamadı");
      return false;
    }
  }

  //saklandı artık kullanılamaz(private)
  bool _uyeVarmi() {
    if (Random().nextBool()) {
      return true;
    } else {
      return false;
    }
  }
}
