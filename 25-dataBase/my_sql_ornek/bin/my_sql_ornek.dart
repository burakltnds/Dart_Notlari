import 'package:mysql1/mysql1.dart';

void main(List<String> arguments) async {
  try {
    var settings = ConnectionSettings(
      host: '127.0.0.1',
      port: 3306,
      user: 'root',
      password: 'Zeysuburki21', // Veritabanı şifrenizi buraya yazın
      db: 'database', // Veritabanı adı
    );

    var conn = await MySqlConnection.connect(settings);
    print("✅ Bağlantı başarılı");

    // Tabloyu oluşturma
    var createTableQuery = '''
    CREATE TABLE IF NOT EXISTS table1 (
      id INT AUTO_INCREMENT PRIMARY KEY,
      name VARCHAR(255)
    );
    ''';
    await conn.query(createTableQuery);
    print("✅ Tablo oluşturuldu veya zaten mevcut");

    // Veri ekleme
    var insertDataQuery = 'INSERT INTO table1 (name) VALUES (?);';
    var result = await conn.query(insertDataQuery, ['Test Name']);
    print("✅ Veri eklendi: ID ${result.insertId}");

    // Veriyi okuma
    var selectQuery = 'SELECT * FROM table1';
    var rows = await conn.query(selectQuery);
    for (var row in rows) {
      print('ID: ${row[0]}');
    }

    await conn.close();
  } catch (e) {
    print("❌ Hata oluştu: $e");
  }
}
