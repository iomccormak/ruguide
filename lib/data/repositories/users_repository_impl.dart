import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/users_data_source.dart';
import 'package:ruguide/domain/repositories/users_repository.dart';

@Singleton(as: UsersRepository)
class UsersRepositoryImpl extends UsersRepository {
  final UsersDataSource _usersDataSource;

  UsersRepositoryImpl(
    this._usersDataSource,
  );
}
