import 'package:cloud_firestore/cloud_firestore.dart';

import '../api_services/firebase_service/firebase_base_model.dart';
import '../models/users_model.dart';

abstract class FirebaseRepository {
  Future<QuerySnapshot<UsersModel?>> getUsers(String path, String pathUser,
      String id, FirebaseBaseModel<UsersModel> model);

  void setUsers(String path, String pathUser, String userId, String id,
      UsersModel newModel,
      {bool? isUpdate});

  Future<void> removeUsers(
      String path, String pathUser, String userId, String doc);

  Future<String?> getVersionFromDatabase();
}
