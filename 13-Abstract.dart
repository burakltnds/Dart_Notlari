void main(List<String> args) {
  var db = FireBaseDb();
}

abstract class Database {
  void userSave();
  void deletedUsers();
}

class FireBaseDb extends Database {
  void userSave() {}
  void deletedUsers() {}
}
