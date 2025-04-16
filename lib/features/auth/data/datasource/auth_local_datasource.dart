import 'package:shared_preferences/shared_preferences.dart';

import '../models/response/login_response_model.dart';

class AuthLocalDatasource {
  Future<void> saveAuthData(LoginResponseModel loginResponseModel) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('auth_data', loginResponseModel.toJson());
  }

  Future<void> removeAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('auth_data');
  }

  Future<LoginResponseModel> getAuthData() async {
    final prefs = await SharedPreferences.getInstance();
    final authData = prefs.getString('auth_data');

    return LoginResponseModel.fromJson(authData!);
  }

  Future<void> saveToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString('token', token);
  }

  Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString('token')!;
  }

  Future<void> removeToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
  }

  Future<bool> isAuth() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey('token');
  }
}
