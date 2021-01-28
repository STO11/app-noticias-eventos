import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Storage {
    // Create storage
    final storage = new FlutterSecureStorage();

    Future setToken(token) async {
      return await storage.write(key: 'token', value: token);
    }

    Future getToken(token) async {
      return await storage.read(key: 'token');
    }

    Future deleteToken(token) async {
      return await storage.delete(key: 'token');
    }
}
