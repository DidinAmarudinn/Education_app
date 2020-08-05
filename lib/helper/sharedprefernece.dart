import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  void saveData(String name, bool isLogin) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("name", name);
    await preferences.setBool("ison", isLogin);
    print(name);
    print(isLogin);
  }

  Future<String> getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("name") ?? "NoName";
  }

  Future<bool> getOn() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getBool("ison") ?? false;
  }
}
