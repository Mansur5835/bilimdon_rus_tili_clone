import 'package:hive/hive.dart';

import '../models/user.dart';

class HiveDB {
  static final _box = Hive.box("db");

  static Future<void> creadUser(User user) async {
    await _box.put('user', user.toJson());
  }

  static Future<void> creadProfile(String image) async {
    await _box.put('image', image);
  }

  static Future<String?> getProfile() async {
    final image = await _box.get('image');

    if (image != null) {
      return image;
    }
    return null;
  }

  static Future<User?> getUser() async {
    final json = await _box.get('user');

    if (json != null) {
      return User.fromJson(json);
    }
    return null;
  }
}
