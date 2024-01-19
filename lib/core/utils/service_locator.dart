import 'package:bookly/Features/home/data/repos/home_repo_impl.dart';
import 'package:bookly/constants.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../features/search/data/repos/search_repo_impl.dart';
import 'api_services.dart';

final getIt = GetIt.instance;

 Future <void> setupServiceLocator()  async {
 getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
 getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl( getIt.get<ApiServices>()));
 getIt.registerSingleton<SearchRepoImpl>(SearchRepoImpl( getIt.get<ApiServices>()));
}