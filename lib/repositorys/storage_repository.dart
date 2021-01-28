import 'package:noticiaseventos/models/user_model.dart';
import 'package:noticiaseventos/services/storage_service.dart';

class StorageRepository {
  final storage = new Storage();

  Future<void> setToken(token) async {
    return await storage.setToken(token);
  }

  Future<String> getToken() async {
    return await storage.getToken();
  }

  Future<void> deleteToken(token) async {
    return await storage.deleteToken(token);
  }

  Future<void> setUser(data) async {
    return await storage.setUser(data);
  }

  Future<UserModel> getUser() async {
    return await storage.getUser();
  }
}
