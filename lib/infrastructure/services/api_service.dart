import 'package:dio/dio.dart';
import 'package:fausto/core/error/api_exception.dart';
import 'package:fausto/core/error/network_exception.dart';


class ApiService {
  final Dio _dio;

  ApiService(this._dio, {String? baseUrl}) {
    _dio.options.baseUrl = baseUrl ?? 'https://quixikila.onrender.com';//'http://localhost:8080'; // Defina a URL base da sua API
    _dio.options.connectTimeout = const Duration(seconds: 30);
    _dio.options.receiveTimeout = const Duration(seconds: 30);
  }

  Future<Response> get(String endpoint,
      {Map<String, dynamic>? queryParameters, Options? options}) async {
    try {
      return await _dio.get(endpoint,
          queryParameters: queryParameters, options: options);
    } on DioException catch (e) {
      if (e.response != null) {
        throw ApiException(
          message: e.response?.data['mensagem'] ?? 'Erro na requisição',
          statusCode: e.response?.statusCode,
          response: e.response,
        );
      } else {
        throw NetworkException(
            message: 'Falha na conexão, verifica a sua conexão com a internet');
      }
    }
  }

  Future<Response> post(String endpoint,
      {Map<String, dynamic>? data, Map<String, String>? queryParameters, Options? options}) async {
    try {
      final response = await _dio.post(endpoint,
      queryParameters: queryParameters,
       data: data, options: options);
      return response; // Retorna a resposta normalmente se o status é 200 ou 201.
    } on DioException catch (e) {
      if (e.response != null) {
        // Acessa a chave correta do JSON retornado pelo backend
        final errorMessage =
            e.response?.data['mensagem'] ?? 'Erro na requisição';
        throw ApiException(
          message: errorMessage,
          statusCode: e.response?.statusCode,
          response: e.response,
        );
      } else {
        throw NetworkException(
            message: 'Falha na conexão, verifica a sua conexão com a internet');
      }
    }
  }

  Future<Response> put(String endpoint,
      {Map<String, dynamic>? data, Options? options}) async {
    try {
      final response = await _dio.put(endpoint, data: data, options: options);
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        // Adiciona mais informações úteis do erro
        throw ApiException(
          message: e.response?.data['mensagem'] ?? 'Erro na requisição',
          statusCode: e.response?.statusCode,
          response: e.response,
        );
      } else {
        throw NetworkException(
            message: 'Falha na conexão, verifica a sua conexão com a internet');
      }
    }
  }

  Future<Response> delete(String endpoint,
      {Map<String, dynamic>? data, Options? options}) async {
    try {
      final response =
          await _dio.delete(endpoint, data: data, options: options);
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        // Adiciona mais informações úteis do erro
        throw ApiException(
          message: e.response?.data['mensagem'] ?? 'Erro na requisição',
          statusCode: e.response?.statusCode,
          response: e.response,
        );
      } else {
        throw NetworkException(
            message: 'Falha na conexão, verifica a sua conexão com a internet');
      }
    }
  }

  Future<Response> patch(String endpoint,
      {Map<String, dynamic>? data, Options? options}) async {
    try {
      final response = await _dio.patch(endpoint, data: data, options: options);
      return response;
    } on DioException catch (e) {
      if (e.response != null) {
        // Adiciona mais informações úteis do erro
        throw ApiException(
          message: e.response?.data['mensagem'] ?? 'Erro na requisição',
          statusCode: e.response?.statusCode,
          response: e.response,
        );
      } else {
        throw NetworkException(
            message: 'Falha na conexão, verifica a sua conexão com a internet');
      }
    }
  }
}
