import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/auth_data_source.dart';
import 'package:ruguide/domain/repositories/auth_repository.dart';

@Singleton(as: AuthRepository)
class AuthRepositoryImpl extends AuthRepository {
  final AuthDataSource _authDataSource;

  AuthRepositoryImpl(
    this._authDataSource,
  );
}
