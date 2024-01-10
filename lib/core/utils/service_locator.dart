import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'api_services.dart';

final getIt = GetIt.instance;

 void setupServiceLocator()  {
 getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
 getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl( getIt.get<ApiServices>()));
}