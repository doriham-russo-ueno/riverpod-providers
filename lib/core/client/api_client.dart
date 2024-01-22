import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class ApiClient {
  Future<Response<dynamic>> getHttp({required String url}) async {
    final response = await Dio().get(url);
    return response;
  }
}
