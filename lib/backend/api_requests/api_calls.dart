import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SoilDataCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Soil Data',
      apiUrl: 'https://eugenechieng.co/datafornasa.json',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<double>? pH(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[?(@.name == 'phh2o')].depths[*].values.mean''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? carbonContent(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[?(@.name == 'soc')].depths[*].values.mean''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? nitrogen(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[?(@.name == 'nitrogen')].depths[*].values.mean''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<int>? cationExchangeCapacity(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[?(@.name == 'cec')].depths[*].values.mean''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? depthLabel(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[1].depths[:].label''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? waterVolumetric(dynamic response) => (getJsonField(
        response,
        r'''$.properties.layers[?(@.name == 'wv0033')].depths[*].values.mean''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class AqiCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'AQI',
      apiUrl:
          'https://api.waqi.info/feed/here/?token=7d82cbb03028559c58f048b68b0391062720a6be',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic aqi(dynamic response) => getJsonField(
        response,
        r'''$.data.aqi''',
      );
}

class WeatherComprehensiveCall {
  static Future<ApiCallResponse> call({
    String? key = '2c9daa7a51fb4e439fa02343240610',
    String? city = 'Sibu',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'WeatherComprehensive',
      apiUrl:
          'https://api.weatherapi.com/v1/forecast.json?key=$key&q=$city',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? chanceOfRain(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.forecast.forecastday[:].day.daily_chance_of_rain''',
      ));
  static double? currentTemp(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.current.temp_c''',
      ));
  static int? currentHumidity(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.current.humidity''',
      ));
  static List<double>? forecastTemp(dynamic response) => (getJsonField(
        response,
        r'''$.forecast.forecastday[:].hour[:].temp_c''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? timeForecastTemp(dynamic response) => (getJsonField(
        response,
        r'''$.forecast.forecastday[:].hour[:].time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? forecastPrecip(dynamic response) => (getJsonField(
        response,
        r'''$.forecast.forecastday[:].hour[:].precip_mm''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static double? currentTTLPrecip(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.forecast.forecastday[:].day.totalprecip_mm''',
      ));
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
