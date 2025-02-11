import 'package:dio/dio.dart';

class ApiClient {
  final Dio dio = Dio(BaseOptions(baseUrl: "http:// 192.168.37.64:8888/api/v1"));

  Future<Map<String, dynamic>> fetchMyProfile() async {
    var response = await dio.get('/auth/details/1');
    if (response.statusCode == 200) {
      Map<String, dynamic> data = response.data;
      return data;
    } else {
      throw Exception("Error 404");
    }
  }
}