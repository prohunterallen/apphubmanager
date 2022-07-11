import 'package:shared_preferences/shared_preferences.dart';

/// ส่วนของการเก็บข้อมูลไว้ในตัวเครื่อง
class StorageService {
  SharedPreferences? prefs;

  /// สร้าง Storage
  Future<SharedPreferences> createStorage() async {
    return prefs = await SharedPreferences.getInstance();
  }
}
