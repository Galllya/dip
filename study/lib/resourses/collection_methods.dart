import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/resourses/storage_methods.dart';
import 'package:uuid/uuid.dart';

class CollectionMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<List<Coloda>> getUserColods({
    String? seatchText,
    required bool isTagsSearch,
  }) async {
    User currentUser = auth.currentUser!;
    List<Coloda> colods = [];
    dynamic a;
    try {
      if (isTagsSearch) {
        if (seatchText != null) {
          a = await fireStore
              .collection('colods')
              .where('uid', isEqualTo: currentUser.uid)
              .where("tags", arrayContains: seatchText)
              .get();
        } else {
          a = await fireStore
              .collection('colods')
              .where('uid', isEqualTo: currentUser.uid)
              .orderBy("dateCreate", descending: true)
              .get();
        }
      } else {
        if (seatchText != null) {
          a = await fireStore
              .collection('colods')
              .where('uid', isEqualTo: currentUser.uid)
              .where("name", isGreaterThanOrEqualTo: seatchText)
              .where("name", isLessThanOrEqualTo: "$seatchText\uf7ff")
              .get();
        } else {
          a = await fireStore
              .collection('colods')
              .where('uid', isEqualTo: currentUser.uid)
              .orderBy("dateCreate", descending: true)
              .get();
        }
      }

      for (var element in a.docChanges) {
        colods.add(
          Coloda.fromSnap(element.doc),
        );
      }
    } catch (e) {
    }

    return colods;
  }

  Future<String> putCollection({
    required Collection collection,
    Uint8List? file,
  }) async {
    User currentUser = auth.currentUser!;

    String res = "";
    try {
      String descriptionMein =
          collection.description == null ? '' : collection.description!;
      String photoURL = '';

      if (collection.imageURL != null) {
        photoURL = collection.imageURL!;
      }
      if (file != null) {
        photoURL = await StorageMethods().uploadImageToStorage(
            childName: 'colodaPics', file: file, isPost: true);
      }

      String collectionId = const Uuid().v1();

      DateTime dateNow = DateTime.now();

      Collection collectionNow = Collection(
        imageURL: photoURL,
        name: collection.name,
        description: collection.description,
        uid: currentUser.uid,
        colodsId: collection.colodsId,
        dateCreate: dateNow,
        tags: collection.tags,
        collectionId: collectionId,
      );

      await fireStore
          .collection('collections')
          .doc(collectionId)
          .set(collectionNow.toJson());

      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<String> updateColoda({
    String? name,
    String? description,
    List<Card>? cards,
    String? photoURL,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    required String docId,
    DateTime? dateNow,
    Uint8List? file,
    String? authorName,
  }) async {
    String res = "";
    User currentUser = auth.currentUser!;

    if (file != null) {
      photoURL = await StorageMethods().uploadImageToStorage(
          childName: 'colodaPics', file: file, isPost: true);
    }

    Coloda colodaToAll = Coloda(
      imageURL: photoURL,
      name: name,
      uid: currentUser.uid,
      cards: cards!.length,
      colodId: docId,
      dateCreate: dateNow,
      tags: tags,
      takeMyHaveAuthour: takeMyHaveAuthour,
      showEvery: showEvery,
    );

    DetailColoda colodaDetail = DetailColoda(
      imageURL: photoURL,
      name: name,
      description: description,
      uid: currentUser.uid,
      cards: cards,
      dateCreate: dateNow,
      tags: tags,
      colodId: docId,
      takeMyHaveAuthour: takeMyHaveAuthour,
      showEvery: showEvery,
    );

    ColodaAll colodaAll = ColodaAll(
      imageURL: photoURL,
      name: name,
      description: description,
      uid: currentUser.uid,
      cards: cards,
      dateCreate: dateNow,
      tags: tags,
      colodId: docId,
      takeMyHaveAuthour: takeMyHaveAuthour,
      authorName: authorName,
    );

    try {
      await fireStore
          .collection('colods')
          .doc(docId)
          .update(colodaToAll.toJson());
      await fireStore
          .collection('colods_detail')
          .doc(docId)
          .update(colodaDetail.toJson());

      if (showEvery!) {
        await fireStore
            .collection('colods_all')
            .doc(docId)
            .set(colodaAll.toJson());
        await fireStore
            .collection('colods_all')
            .doc(docId)
            .update(colodaAll.toJson());
      } else {
        await fireStore.collection('colods_all').doc(docId).delete();
      }

      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<String> deleteColoda({
    required String docId,
  }) async {
    String res = "";

    try {
      await fireStore.collection('colods').doc(docId).delete();
      await fireStore.collection('colods_detail').doc(docId).delete();
      await fireStore.collection('colods_all').doc(docId).delete();

      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }
}
