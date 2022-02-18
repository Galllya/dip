import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/coloda/card.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/resourses/storage_methods.dart';
import 'package:uuid/uuid.dart';

class ColodaMethods {
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
      print(e);
    }

    return colods;
  }

  Future<DetailColoda> getUserColodDetail({
    required String colodId,
  }) async {
    final colod =
        await fireStore.collection('colods_detail').doc(colodId).get();

    final DetailColoda colodaDet = DetailColoda.fromSnap(colod);
    return colodaDet;
  }

  Future<String> putColoda({
    required String name,
    String? description,
    required List<Card> cards,
    Uint8List? file,
    bool? showEvery,
    bool? takeMyHaveAuthour,
    List<String>? tags,
    String? userName,
    String? imageURL,
  }) async {
    User currentUser = auth.currentUser!;

    String res = "";
    try {
      String descriptionMein = description == null ? '' : description;
      String photoURL = '';

      if (imageURL != null) {
        photoURL = imageURL;
      }
      if (file != null) {
        photoURL = await StorageMethods().uploadImageToStorage(
            childName: 'colodaPics', file: file, isPost: true);
      }

      String colodaId = const Uuid().v1();

      DateTime dateNow = DateTime.now();

      Coloda colodaToAll = Coloda(
        imageURL: photoURL,
        name: name,
        uid: currentUser.uid,
        cards: cards.length,
        colodId: colodaId,
        dateCreate: dateNow,
        tags: tags,
        takeMyHaveAuthour: takeMyHaveAuthour,
        showEvery: showEvery,
      );

      DetailColoda colodaDetail = DetailColoda(
        imageURL: photoURL,
        name: name,
        description: descriptionMein,
        uid: currentUser.uid,
        cards: cards,
        dateCreate: dateNow,
        tags: tags,
        colodId: colodaId,
        takeMyHaveAuthour: takeMyHaveAuthour,
        showEvery: showEvery,
      );
      ColodaAll colodaAll = ColodaAll(
        imageURL: photoURL,
        name: name,
        description: descriptionMein,
        uid: currentUser.uid,
        cards: cards,
        dateCreate: dateNow,
        tags: tags,
        colodId: colodaId,
        takeMyHaveAuthour: takeMyHaveAuthour,
        authorName: userName,
      );

      await fireStore
          .collection('colods')
          .doc(colodaId)
          .set(colodaToAll.toJson());

      await fireStore
          .collection('colods_detail')
          .doc(colodaId)
          .set(colodaDetail.toJson());

      if (showEvery!) {
        await fireStore
            .collection('colods_all')
            .doc(colodaId)
            .set(colodaAll.toJson());
      }

      res = 'success';
    } catch (err) {
      print(err);
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
    print(photoURL);

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
      print(err);
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
      print(err);
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<List<ColodaAll>> getAllColods({
    required String seatchText,
  }) async {
    User currentUser = auth.currentUser!;
    List<ColodaAll> colods = [];
    dynamic a;
    try {
      a = await fireStore
          .collection('colods_all')
          // .where('uid', isNotEqualTo: currentUser.uid)
          .where("name", isGreaterThanOrEqualTo: seatchText)
          .where("name", isLessThanOrEqualTo: "$seatchText\uf7ff")
          .get();

      for (var element in a.docChanges) {
        if (ColodaAll.fromSnap(element.doc).uid != currentUser.uid) {
          colods.add(
            ColodaAll.fromSnap(element.doc),
          );
        }
      }
    } catch (e) {
      print(e);
    }

    return colods;
  }

  Future<List<ColodaAll>> getColodsForUser({
    required String uid,
  }) async {
    List<ColodaAll> colods = [];
    dynamic a;
    try {
      a = await fireStore
          .collection('colods_all')
          .where('uid', isEqualTo: uid)
          .orderBy("dateCreate", descending: true)
          .get();

      for (var element in a.docChanges) {
        colods.add(
          ColodaAll.fromSnap(element.doc),
        );
      }
    } catch (e) {
      print(e);
    }

    return colods;
  }
}
