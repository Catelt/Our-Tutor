import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import '../../../localization/localization_utils.dart';
import '../../../utils/utils.dart';

enum XMethod {
  get,
  post,
  put,
  patch,
  delete,
  head;
}

class XHttp {
  factory XHttp() => instance;
  XHttp._internal() {
    final options = BaseOptions(
      validateStatus: (status) {
        return true;
      },
      baseUrl: _baseUrl,
      headers: _headers,
      connectTimeout: _connectTimeout,
      receiveTimeout: _receiveTimeout,
      sendTimeout: _sendTimeout,
    );

    _dio = Dio(options);
  }

  static final XHttp instance = XHttp._internal();
  static XHttp get I => instance;
  late Dio _dio;

  String? tokenType;
  String? tokenApi;

  String _baseUrl = 'https://sandbox.api.lettutor.com';
  Duration _connectTimeout = const Duration(seconds: 10);
  Duration _receiveTimeout = const Duration(seconds: 10);
  Duration _sendTimeout = const Duration(seconds: 5);

  Map<String, String> _headers = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
  };

  /// Configure Dio
  void configDio({
    Duration? connectTimeout,
    Duration? receiveTimeout,
    Duration? sendTimeout,
    String? baseUrl,
    List<Interceptor>? interceptors,
  }) {
    _connectTimeout = connectTimeout ?? _connectTimeout;
    _receiveTimeout = receiveTimeout ?? _receiveTimeout;
    _sendTimeout = sendTimeout ?? _sendTimeout;
    _baseUrl = baseUrl ?? _baseUrl;

    _dio = Dio(_dio.options.copyWith(
        baseUrl: _baseUrl,
        connectTimeout: _connectTimeout,
        receiveTimeout: _receiveTimeout,
        sendTimeout: _sendTimeout));
  }

  void setTokenApi(String tokenApi, {String tokenType = 'Bearer'}) {
    this.tokenType = tokenType;
    this.tokenApi = tokenApi;

    if (tokenApi.isNotEmpty) {
      _headers.addAll({'Authorization': '$tokenType $tokenApi'});
    } else {
      _headers.removeWhere((key, value) => key == 'Authorization');
    }
    _dio = Dio(_dio.options.copyWith(headers: _headers));
  }

  Future<String> request(
    XMethod method,
    String url, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
    CancelToken? cancelToken,
    Options? options,
  }) async {
    String bodyResponse = '';
    try {
      // Check internet
      final connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.none) {
        throw Exception(S.text.error_noInternet);
      }

      final response = await _dio.request(
        url,
        data: data,
        queryParameters: queryParameters,
        options: _checkOptions(method.name, options),
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );
      bodyResponse = jsonEncode(response.data);
      xLog.i('> RESPONSE [${response.statusCode}]<  $url');
      if (response.statusCode == null) {
        throw FlutterError(S.text.error_unknown);
      }
      if (response.statusCode! <= 299) {
        return bodyResponse;
      } else {
        final message = response.data['message'] ?? "";
        throw Exception([message]);
      }
    } catch (e) {
      xLog
        ..w('> API CATCH Error< $e')
        ..w('> API CATCH Body< $bodyResponse');
      if (e is DioError) {
        throw e.response?.data['errors'][0] ?? "Error";
      } else {
        throw e;
      }
    }
  }

  Options _checkOptions(String? method, Options? options) {
    final newOptions = options ?? Options();
    newOptions.method = method;
    return newOptions;
  }

  Future<String> get(String url, {Map<String, dynamic>? queryParameters}) {
    return request(XMethod.get, url, queryParameters: queryParameters);
  }

  Future<String> post(String url,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return request(XMethod.post, url,
        data: data, queryParameters: queryParameters);
  }

  Future<String> put(String url,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return request(XMethod.put, url,
        data: data, queryParameters: queryParameters);
  }

  Future<String> delete(String url,
      {Object? data, Map<String, dynamic>? queryParameters}) {
    return request(XMethod.delete, url,
        data: data, queryParameters: queryParameters);
  }
}
