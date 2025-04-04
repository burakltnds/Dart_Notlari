void main(List<String> args) {
  User kullanici = User();
  kullanici.girisYap();
  User kullanici2 = NormalUser();
  kullanici2.girisYap();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("giris yapildi");
  }
}

class NormalUser extends User {
  void davetEt() {}

  @override
  void girisYap() {
    super.girisYap();
    print("normal user girdi");
  }
}

class AdminUser extends User {
  void kullaniciSayisi() {}
}

class ReadOnly extends NormalUser {
  void oku() {}
}
