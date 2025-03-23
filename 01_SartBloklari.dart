void main() {
  var girisYap = false;

  if (girisYap == true) {
    print("Ana Sayfa");
  } else if (girisYap == false) {
    print("Giris Yapilamadi");
  }

  String not = "F";
  switch (not) {
    case "A":
      print("Geçti");
      break;
    case "F":
      print("Kaldi");
      break;
    default:
      print("Veri Yok");
      break;
  }
}
