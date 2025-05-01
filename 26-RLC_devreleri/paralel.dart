import 'dart:math';

class Paralel {
  double L = 0, C = 0, R = 0;
  double Xl = 0, Xc = 0, f = 0, v = 0, Z = 0;
  double cosF = 0, radyan = 0;

  Paralel(double L, double C, double R, double f, double v) {
    this.R = R;
    this.L = L;
    this.C = C;
    this.f = f;
    this.v = v;
    this.Xl = 2 * pi * f * L;
    this.Xc = 1 / (2 * pi * f * C);
    this.Z =
        1 / (sqrt((1 / (R * R)) + ((1 / Xl - 1 / Xc)) * ((1 / Xl - 1 / Xc))));
    this.cosF = Z / R;
    this.radyan = acos(cosF);
  }

  double enduktansS() {
    if (this.Xl > this.Xc) {
      print("Devre Endüktif");
      return Z;
    } else if (this.Xl < this.Xc) {
      print("Devre Kapasitif");
      return Z;
    } else {
      print("Devre Rezistif");
      return Z;
    }
  }

  double devreAkimi() {
    double akim = v / Z;
    return akim;
  }

  double maxV() {
    return v / 0.707;
  }

  double maxI() {
    return devreAkimi() / 0.707;
  }

  double fazAcisi() {
    double derece = radyan * 180 / pi;
    return derece;
  }

  double aktifGuc() {
    return v * devreAkimi() * cosF;
  }

  double reaktifGuc() {
    return v * devreAkimi() * sin(this.radyan);
  }

  double gorunurGuc() {
    return v * devreAkimi();
  }

  void seriDevreler() {
    print("L-Xl Değerleri=${L}-${Xl}");
    print("C-Xc Değerleri=${C}-${Xc}");
    print("Z=${enduktansS()} Ohm");
    print("Devre Akımı=${devreAkimi()} Amper");
    print("Max Gerilim=${maxV()} Volt");
    print("Max Akım=${maxI()} Amper");
    print("Faz Açısı=${fazAcisi()} Derece");
    print("Aktif Güç=${aktifGuc()} Watt");
    print("Reaktif Güç=${reaktifGuc()} VAR");
    print("Görünür Güç=${gorunurGuc()} VA");
    print(
        "Devre Denklemi Akım I=${maxI()} * sin(${2 * pi * f} * t - ${fazAcisi()})");
    print(
        "Devre Denklemi Gerilim V=${maxV()} * sin(${2 * pi * f} * t - ${fazAcisi()})");
  }
}
