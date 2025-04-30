void main(List<String> args) {}

abstract interface class Ucabilen {
  void uc();
}

abstract class Hayvan {
  void havla();
  void kos();
}

class Kopek extends Hayvan implements Ucabilen {
  @override
  void havla() {}
  @override
  void kos() {}
  @override
  void uc() {
    // TODO: implement uc
  }
}
