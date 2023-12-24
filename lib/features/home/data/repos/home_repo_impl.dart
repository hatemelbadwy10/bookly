import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/utils/api_services.dart';
class HomeRepoImpl implements HomeRepo{
 final AppServices appServices ;

  HomeRepoImpl(this.appServices);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks()   async{
    try {
      var data= await appServices.get('volumes?Filtering=free-ebooks&q=subject:programming&sorting=newest');
      List<BookModel> books =[];
      for( var items in data['items']){
        books.add(BookModel.fromJson(items));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {

    throw UnimplementedError();
  }

}
