import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/reviews_data_source.dart';
import 'package:ruguide/domain/repositories/reviews_repository.dart';

@Singleton(as: ReviewsRepository)
class ReviewsRepositoryImpl extends ReviewsRepository {
  final ReviewsDataSource _reviewsDataSource;

  ReviewsRepositoryImpl(
    this._reviewsDataSource,
  );
}
