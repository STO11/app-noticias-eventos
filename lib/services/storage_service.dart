import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:noticiaseventos/models/user_model.dart';

class Storage {
  // Create storage
  final storage = new FlutterSecureStorage();

  Future<void> setToken(token) async {
    return await storage.write(key: 'token', value: token);
  }

  Future<String> getToken() async {
    return await storage.read(key: 'token');
  }

  Future<void> deleteToken(token) async {
    return await storage.delete(key: 'token');
  }

  Future<void> setUser(data) async {
    var user = UserModel.fromJson(jsonDecode(data));
    return await storage.write(key: 'user', value: jsonEncode(user));
  }

  Future<UserModel> getUser() async {
    var json = await storage.read(key: 'user');
    return json != null ? UserModel.fromJson(jsonDecode(json)) : null;
  }
}
