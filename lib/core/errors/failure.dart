import 'package:dio/dio.dart';
abstract class Failure{
  final String errMassage;
  Failure(this.errMassage);
}
class ServerFailure  extends Failure{
  ServerFailure(super.errMassage);
    factory ServerFailure.fromDioException(DioException dioException ){

      print(dioException.toString());

      switch(dioException.type){


        case DioExceptionType.connectionTimeout:
          print(1);
       return ServerFailure('connectionTimeout');
        case DioExceptionType.sendTimeout:
          print(2);
          return ServerFailure('sendTimeout');
        case DioExceptionType.receiveTimeout:
          print(3);
          return ServerFailure('receiveTimeout');
        case DioExceptionType.badCertificate:
          print(4);
          return ServerFailure('badCertificate');

        case DioExceptionType.badResponse:
          print(5);
         return ServerFailure.fromRespond(dioException.response!.statusCode!, dioException.response!.data);
        case DioExceptionType.cancel:
          print(6);
          return ServerFailure('api service request canceled');
        case DioExceptionType.connectionError:
          print(7);
          return ServerFailure('connectionError');
        case DioExceptionType.unknown:
          print(8);
          if(dioException.message!.contains('socketException')){
            print(9);
            return ServerFailure('NO INTERNET');
          }
          else {
            print(10);

            return ServerFailure('unknown error');
          }

      }
      }
      factory ServerFailure.fromRespond(int statusCode,dynamic respond){
      if( statusCode==400 || statusCode ==401 || statusCode==403){
        return  ServerFailure(respond['error']['message']);

      }
      else if (statusCode==404) {
        return  ServerFailure('404 not found');
      }
      else if (statusCode==500) {
        return  ServerFailure('server not available');
      }
      else {
        return ServerFailure('oops there is a error try again letter');
      }
    }
}