import 'package:get_storage/get_storage.dart';

class JLocalStorage {
  static final JLocalStorage _instance = JLocalStorage._internal();

  factory JLocalStorage () {
    return _instance;
  }

  JLocalStorage._internal();

  final _storage = GetStorage();

  //Generic method to save data
  Future<void> saveData<J> (String key, J value) async {
  await _storage.write(key, value);
  }

  //Generic method to read data
  J? readData<J> (String key) {
     return _storage.read<J>(key);
  }

  //Generic method to remove data
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  //Clear all data in storage
  Future<void> clearAll() async {
    await _storage.erase();
  }
}