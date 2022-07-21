import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import '../../authentication_page/data/user_id_storage.dart';
import '../../profile_page/domain/entity/questionnaire/questionnaire_entity.dart';

class QuestionnaireFirebaseRepository {
  final _fireStore = FirebaseFirestore.instance;
  final UserIdStorage _userIdStorage = UserIdStorage();

  Future<List<QuestionnaireEntity>> getQuestionnaires() async {
    String userId = await _userIdStorage.loadUserId();

    final snapshot = await _fireStore
        .collection('questionnaire')
        .where('userId', isEqualTo: userId)
        .get();

    return snapshot.docs
        .map((doc) => doc.data())
        .toList()
        .map((json) => QuestionnaireEntity.fromJson(json))
        .toList();
  }

  Future<void> addQuestionnaire(QuestionnaireEntity questionnaireEntity) async {
    final orders = _fireStore.collection('questionnaire');
    await orders.add(
      questionnaireEntity.toJson(),
    );
  }

  Future<void> updateQuestionnaire(
      String id, Map<String,dynamic> fields) async {
    final questionnaire = await _fireStore
        .collection('questionnaire')
        .where('id', isEqualTo: id)
        .get();

    final documentId = questionnaire.docs.first.id.toString();
    log(documentId);

    for(var key in fields.keys){
      await _fireStore.collection('questionnaire').doc(documentId).update(
        {key: fields[key]}
      );
    }
    log('ok');
  }

  Future<void> deleteQuestionnaire(String id) async {
    final questionnaire = await _fireStore
        .collection('questionnaire')
        .where('id', isEqualTo: id)
        .get();

    final documentId = questionnaire.docs.first.id.toString();
    await _fireStore.collection('questionnaire').doc(documentId).delete();
  }
}
