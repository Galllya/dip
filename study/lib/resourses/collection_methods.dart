import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/resourses/storage_methods.dart';
import 'package:uuid/uuid.dart';

class CollectionMethods {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore fireStore = FirebaseFirestore.instance;

  Future<List<Collection>> getUserCollections({
    String? seatchText,
    required bool isTagsSearch,
  }) async {
    User currentUser = auth.currentUser!;
    List<Collection> collections = [];
    dynamic a;
    try {
      if (isTagsSearch) {
        if (seatchText != null) {
          a = await fireStore
              .collection('collections')
              .where('uid', isEqualTo: currentUser.uid)
              .where("tags", arrayContains: seatchText)
              .get();
        } else {
          a = await fireStore
              .collection('collections')
              .where('uid', isEqualTo: currentUser.uid)
              .orderBy("dateCreate", descending: true)
              .get();
        }
      } else {
        if (seatchText != null) {
          a = await fireStore
              .collection('collections')
              .where('uid', isEqualTo: currentUser.uid)
              .where("name", isGreaterThanOrEqualTo: seatchText)
              .where("name", isLessThanOrEqualTo: "$seatchText\uf7ff")
              .get();
        } else {
          a = await fireStore
              .collection('collections')
              .where('uid', isEqualTo: currentUser.uid)
              .orderBy("dateCreate", descending: true)
              .get();
        }
      }

      for (var element in a.docChanges) {
        collections.add(
          Collection.fromSnap(element.doc),
        );
      }
    } catch (e) {
      print(e);
    }

    return collections;
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

      String desc = collection.description ?? '';
      Collection collectionNow = Collection(
        imageURL: photoURL,
        name: collection.name,
        description: desc,
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

  Future<String> updateCollection({
    required Collection collection,
    Uint8List? file,
  }) async {
    String res = "";
    User currentUser = auth.currentUser!;
    String photoURL = collection.imageURL ?? '';

    if (file != null) {
      photoURL = await StorageMethods().uploadImageToStorage(
          childName: 'colodaPics', file: file, isPost: true);
    }

    Collection collectionNow = Collection(
      imageURL: photoURL,
      name: collection.name,
      description: collection.description,
      uid: currentUser.uid,
      colodsId: collection.colodsId,
      dateCreate: collection.dateCreate,
      tags: collection.tags,
      collectionId: collection.collectionId,
    );

    try {
      await fireStore
          .collection('collections')
          .doc(collectionNow.collectionId)
          .update(collectionNow.toJson());
      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<Collection> getUserCollection({
    required String collectionId,
  }) async {
    final collection =
        await fireStore.collection('collections').doc(collectionId).get();

    final Collection collectionDet = Collection.fromSnap(collection);
    return collectionDet;
  }

  Future<String> deleteCollection({
    required String docId,
  }) async {
    String res = "";

    try {
      await fireStore.collection('collections').doc(docId).delete();

      res = 'success';
    } catch (err) {
      res = 'Произошла ошибка';
    }
    return res;
  }

  Future<List<Coloda>> getColodsInCollection({
    required List<String> colodsId,
  }) async {
    List<Coloda> colods = [];

    await Future.forEach(colodsId, (element) async {
      DocumentSnapshot snap =
          await fireStore.collection('colods').doc(element.toString()).get();
      colods.add(Coloda.fromSnap(snap));
    });

    return colods;
  }

  Future<List<Collection>> getMainCollections() async {
    User currentUser = auth.currentUser!;
    List<Collection> collections = [];
    dynamic a;
    a = await fireStore
        .collection('collections')
        .where('uid', isEqualTo: currentUser.uid)
        .orderBy("dateCreate", descending: true)
        .limit(3)
        .get();

    for (var element in a.docChanges) {
      collections.add(
        Collection.fromSnap(element.doc),
      );
    }

    return collections;
  }
}
