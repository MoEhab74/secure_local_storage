import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureLocalStorageHelper {
  AndroidOptions _getAndroidOptions() =>
      const AndroidOptions(encryptedSharedPreferences: true);
  late final storage = FlutterSecureStorage(aOptions: _getAndroidOptions());

  // Write data

  Future<void> writeData(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  // Read data

  Future<String> readData(String key) async {
    return await storage.read(key: key) ?? '0';
  }

  // Delete data

  Future<void> deleteData(String key) async {
    await storage.delete(key: key);
  }
}
