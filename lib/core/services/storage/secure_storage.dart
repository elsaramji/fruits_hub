import 'package:flutter_secure_storage/flutter_secure_storage.dart'
    show AndroidOptions, FlutterSecureStorage, IOSOptions;
import 'package:injectable/injectable.dart' show LazySingleton;

@LazySingleton()
class SecureStorage {
  final FlutterSecureStorage _storage;
  SecureStorage()
    : _storage = const FlutterSecureStorage(
        iOptions: IOSOptions.defaultOptions,
        aOptions: AndroidOptions.defaultOptions,
      );

  Future<void> saveToken(String token) async {
    await _storage.write(key: 'token', value: token);
  }

  Future<String?> getToken() async {
    return await _storage.read(key: 'token');
  }

  Future<void> deleteToken() async {
    await _storage.delete(key: 'token');
  }
}
