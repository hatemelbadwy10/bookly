import 'package:dio/dio.dart';

class AppServices{
  final _baseUrl ='https://www.googleapis.com/books/v1/';
  final Dio dio;
  AppServices(this.dio);
  Future<Map<String,dynamic>> get(String endPoint) async{
    var response = await dio.get('$_baseUrl $endPoint');
    return response.data;


  }
}