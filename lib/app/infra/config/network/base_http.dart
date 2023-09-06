import 'package:dio/dio.dart';

class BaseHttp {
  late Dio dio;
  BaseHttp() {
    dio = Dio();
    dio.options = BaseOptions(
      connectTimeout: 30000,
      receiveTimeout: 30000,
      headers: {
        'Content-Type': 'application/json',
      },
      baseUrl: 'https://jsonplaceholder.typicode.com',
    );
  }
}
