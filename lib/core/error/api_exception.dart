import 'package:dio/dio.dart';

class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final Response? response;

  ApiException({required this.message, this.statusCode, this.response});

  @override
  String toString() => 'ApiException: $message (${statusCode ?? 'no status'})';
}
