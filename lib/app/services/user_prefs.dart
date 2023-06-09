import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/countries.dart';
import '../network/model/message.dart';
import '../network/model/user/user.dart';
import '../utils/utils.dart';

class _keys {
  static const String locate = 'app-locale';
  static const String theme = 'app-theme';
  static const String user = 'user';
  static const String messages = 'messages';
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

  // Languages
  String getLocale() {
    final value = _prefs.getString(_keys.locate);
    return value ?? XAppLanguage.languages[1].code;
  }

  void setLocale(String value) {
    _prefs.setString(_keys.locate, value);
  }

  // theme
  ThemeMode getTheme() {
    final value = _prefs.getString(_keys.theme);
    return ThemeMode.values.firstWhere(
      (e) => e.toString().toLowerCase() == '$value'.toLowerCase(),
      orElse: () => ThemeMode.light,
    );
  }

  void setTheme(ThemeMode value) {
    _prefs.setString(_keys.theme, value.toString().toLowerCase());
  }

  // user
  void setUser(MUser? value) {
    if (value == null || value == MUser.empty()) {
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

  // message
  void saveMessages(List<XMessage> list) {
    if (list.isEmpty) {
      _prefs.remove(_keys.messages);
    } else {
      final jsonList = list.map((message) => message.toJson()).toList();
      _prefs.setStringList(_keys.messages, jsonList);
    }
  }

  List<XMessage> getMessages() {
    List<XMessage> result = [];
    final list = _prefs.getStringList(_keys.messages);
    if (list == null) return result;
    result = list.map((message) => XMessage.fromJson(message)).toList();
    return result;
  }
}
