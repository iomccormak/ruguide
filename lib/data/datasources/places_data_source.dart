import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@singleton
class PlacesDataSource {
  final FirebaseFirestore _firebaseFirestore;

  PlacesDataSource(this._firebaseFirestore);
}
