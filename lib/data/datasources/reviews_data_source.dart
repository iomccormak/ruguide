import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:ruguide/data/datasources/auth_data_source.dart';

@singleton
class ReviewsDataSource {
  final FirebaseFirestore _firebaseFirestore;
  final AuthDataSource _authDataSource;

  ReviewsDataSource(
    this._firebaseFirestore,
    this._authDataSource,
  );
}
