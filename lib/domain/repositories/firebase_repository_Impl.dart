import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

import '../../constant/enum/platform_enum.dart';
import '../../data/api_services/firebase_service/firebase_base_model.dart';
import '../../data/api_services/firebase_service/firebase_collections.dart';
import '../../data/models/users_model.dart';
import '../../data/models/version_model.dart';
import '../../data/repositories/firebase_repository.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  final FirebaseFirestore _firebaseFirestore;
  FirebaseRepositoryImpl(this._firebaseFirestore);

  @override
  Future<QuerySnapshot<UsersModel?>> getUsers(String path, String pathUser,
      String id, FirebaseBaseModel<UsersModel> model) {
    try {
      final currentUser =
          _firebaseFirestore.collection(path).doc(id).collection(pathUser);
      final response = currentUser.withConverter(
        fromFirestore: (snapshot, options) {
          return model.fromFirebase(snapshot);
        },
        toFirestore: (value, options) {
          if (value == null) throw Exception("");
          return model.toJson();
        },
      ).get();

      return response;
    } on FirebaseAuthException catch (e) {
      print("We failed ${e.message}");
      throw Exception(e.message);
    }
  }

  @override
  Future<String?> getVersionFromDatabase() async {
    if (kIsWeb) return null;
    try {
      final response = await FirebaseCollections.version.reference
          .withConverter<VersionModel?>(
              fromFirestore: (snapshot, options) =>
                  VersionModel().fromFirebase(snapshot),
              toFirestore: (value, options) =>
                  value?.toJson() ?? <String, Object?>{})
          .doc(PlatformEnum.versionName)
          .get();

      return response.data()?.number;
    } on FirebaseAuthException catch (e) {
      print("We failed ${e.message}");
      throw Exception(e.message);
    }
  }

  @override
  Future<void> setUsers(String path, String pathUser, String userId, String id,
      UsersModel newModel,
      {bool? isUpdate}) async {
    try {
      final db =
          _firebaseFirestore.collection(path).doc(userId).collection(pathUser);
      final dbRef = db.withConverter(
        fromFirestore: (snapshot, options) {
          return newModel.fromFirebase(snapshot);
        },
        toFirestore: (value, options) {
          if (value == null) throw Exception("");
          return newModel.toJson();
        },
      ).doc(id);

      await dbRef.set(
          newModel, isUpdate ?? false ? SetOptions(merge: true) : null);
    } on FirebaseAuthException catch (e) {
      print("We failed ${e.message}");
      throw Exception(e.message);
    }
  }

  @override
  Future<void> removeUsers(
      String path, String pathUser, String userId, String doc) async {
    await _firebaseFirestore
        .collection(path)
        .doc(userId)
        .collection(pathUser)
        .doc(doc)
        .delete();
  }
}
