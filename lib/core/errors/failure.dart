import 'package:dio/dio.dart';

abstract class Failure{
  final String errMassage;
  Failure(this.errMassage);
}
class ServerFailure  extends Failure{
  ServerFailure(super.errMassage);
    factory ServerFailure.fromDioError(DioError dioError ){
      switch(dioError.type){
        case DioExceptionType.connectionTimeout:
       return ServerFailure('connectionTimeout');
        case DioExceptionType.sendTimeout:
          return ServerFailure('sendTimeout');
        case DioExceptionType.receiveTimeout:
          return ServerFailure('receiveTimeout');
        case DioExceptionType.badCertificate:
          return ServerFailure('badCertificate');
        case DioExceptionType.badResponse:
          return ServerFailure('badCertificate');
        case DioExceptionType.cancel:
          return ServerFailure('badResponse');
        case DioExceptionType.connectionError:
          return ServerFailure('connectionError');
        case DioExceptionType.unknown:
          return ServerFailure('badCertificate');
      }
      }
}