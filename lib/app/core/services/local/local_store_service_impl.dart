import 'package:entregas/app/core/services/local/local_store_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStoreServiceImpl implements LocalStoreService {
  @override
  Future delete(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.remove(key);
  }

  @override
  Future get(String key) async {
    var shared = await SharedPreferences.getInstance();
    return shared.get(key);
  }

  @override
  Future put(String key, dynamic value) async {
    var shared = await SharedPreferences.getInstance();
    if (value is String) {
      await shared.setString(key, value);
    } else if (value is bool) {
      await shared.setBool(key, value);
    }
  }
}
