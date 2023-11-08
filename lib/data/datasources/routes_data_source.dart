import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class RoutesDataSource {
  final FirebaseFirestore _firebaseFirestore;

  RoutesDataSource(this._firebaseFirestore);
}
