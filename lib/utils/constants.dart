import 'package:dio/dio.dart';

BaseOptions dioOptions = BaseOptions(
  baseUrl:
      'https://trams-api.herokuapp.com/api', // 'http://localhost:3000/api',
  connectTimeout: 10000,
  receiveTimeout: 3000,
);

enum ErrorMessage { serverError, networkError, internalError }

const String appStoreUrl = 'https://apps.apple.com/fr/app/trams/id1552379376';
const String playStoreUrl =
    'https://play.google.com/store/apps/details?id=com.trams';
