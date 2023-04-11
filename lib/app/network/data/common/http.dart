import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:our_tutor/app/localization/localization_utils.dart';
import 'package:our_tutor/app/utils/utils.dart';

class XHttp {
  static String? tokenType;
  static String? tokenApi;

  static Map<String, String> get _headers => {
        'Content-type': 'application/json',
        'Accept': 'application/json',
        "Authorization": "$tokenType $tokenApi"
      };

  static void setTokenApi(String tokenApi, {String tokenType = "Bearer"}) {
    XHttp.tokenType = tokenType;
    XHttp.tokenApi = tokenApi;
  }

  static const domain = '';

  static Future<String> get(String url) async {
    String bodyResponse = '';
    try {
      final uri = Uri.https(domain, url);
      final response = await http
          .get(uri, headers: _headers)
          .timeout(const Duration(minutes: 5));
      xLog.i('> GET RESPONSE [${response.statusCode}]<  $url');
      bodyResponse = response.body;
      if (response.statusCode <= 299) {
        return bodyResponse;
      } else {
        if (response.statusCode >= 400) {
          throw FlutterError(S.text.error_noInternet);
        } else {
          throw FlutterError(S.text.error_unknown);
        }
      }
    } catch (e) {
      xLog.w('> API CATCH Error< $e');
      xLog.w('> API CATCH Body< $bodyResponse');
      rethrow;
    }
  }

  static Future<String> post(String url, {String? body}) async {
    String bodyResponse = '';
    try {
      final uri = Uri.https(domain, url);
      final response = await http
          .post(uri, body: body, headers: _headers)
          .timeout(const Duration(minutes: 5));
      xLog.i('> POST RESPONSE [${response.statusCode}]< $url $body');
      bodyResponse = response.body;
      if (response.statusCode <= 299) {
        return bodyResponse;
      } else {
        if (response.statusCode >= 400) {
          throw FlutterError(S.text.error_noInternet);
        } else {
          throw FlutterError(S.text.error_unknown);
        }
      }
    } catch (e) {
      xLog.w('> API CATCH Error< $e');
      xLog.w('> API CATCH Body< $bodyResponse');
      rethrow;
    }
  }
}
