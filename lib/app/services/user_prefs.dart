import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../network/model/token/token.dart';
import '../network/model/user/user.dart';
import '../utils/utils.dart';

class _keys {
  static const String theme = 'app-theme';
  static const String user = 'user';
  static const String token = 'auth-token';
}

class UserPrefs {
  factory UserPrefs() => instance;
  UserPrefs._internal();

  static final UserPrefs instance = UserPrefs._internal();
  static UserPrefs get I => instance;
  late SharedPreferences _prefs;
  Future initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // theme
  ThemeMode getTheme() {
    final value = _prefs.getString(_keys.theme);
    return ThemeMode.values.firstWhere(
      (e) => e.toString().toLowerCase() == '$value'.toLowerCase(),
      orElse: () => ThemeMode.system,
    );
  }

  void setTheme(ThemeMode value) {
    _prefs.setString(_keys.theme, value.toString().toLowerCase());
  }

  // user
  void setUser(MUser? value) {
    if (value == null) {
      _prefs.remove(_keys.user);
    } else {
      _prefs.setString(_keys.user, jsonEncode(value.toJson()));
    }
  }

  MUser? getUser() {
    final value = _prefs.getString(_keys.user);
    try {
      if (value == null || value.isEmpty) return null;
      return MUser.fromJson(jsonDecode(value));
    } catch (e) {
      xLog.e(e);
      return null;
    }
  }

  // token
  void setToken(MToken? value) {
    if (value == null) {
      _prefs.remove(_keys.token);
    } else {
      _prefs.setString(_keys.token, jsonEncode(value.toJson()));
    }
  }

  MToken? getToken() {
    final value = _prefs.getString(_keys.token);
    try {
      if (value == null || value.isEmpty) return null;
      return MToken.fromJson(jsonDecode(value));
    } catch (e) {
      xLog.e(e);
      return null;
    }
  }
}
