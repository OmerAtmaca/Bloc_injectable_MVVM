import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tofas_spor_okullari/data/api_services/firebase_service/firebase_base_model.dart';

import '../models/users_model.dart';

abstract class FirebaseRepository {
  Future<QuerySnapshot<UsersModel?>> getUsers(
      String path, FirebaseBaseModel<UsersModel> model);

  void setUsers(String path, String id, UsersModel newModel, {bool? isUpdate});

  Future<void> removeUsers(String path, String doc);

  Future<String?> getVersionFromDatabase();
}
