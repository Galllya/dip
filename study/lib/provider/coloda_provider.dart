import 'dart:typed_data';
import 'package:study/models/coloda/card.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/models/coloda/coloda_all.dart';
import 'package:study/models/coloda/coloda_detail.dart';
import 'package:study/resourses/coloda_methods.dart';

class ColodaProvider {
  final ColodaMethods colodaMethods = ColodaMethods();

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
    String? anotherUserUid,
  }) async {
    String res = await colodaMethods.putColoda(
      name: name,
      description: description,
      cards: cards,
      file: file,
      showEvery: showEvery,
      tags: tags,
      takeMyHaveAuthour: takeMyHaveAuthour,
      userName: userName,
      imageURL: imageURL,
      anotherUserUid: anotherUserUid,
    );
    return res;
  }

  Future<List<Coloda>> getUserColoda(
      {String? searchText, bool isTagsSearch = true}) async {
    return await colodaMethods.getUserColods(
      seatchText: searchText,
      isTagsSearch: isTagsSearch,
    );
  }

  Future<DetailColoda> getColodDetail({
    required String colodID,
  }) async {
    return await colodaMethods.getUserColodDetail(
      colodId: colodID,
    );
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
    String res = await colodaMethods.updateColoda(
      name: name,
      description: description,
      cards: cards,
      photoURL: photoURL,
      showEvery: showEvery,
      tags: tags,
      takeMyHaveAuthour: takeMyHaveAuthour,
      docId: docId,
      dateNow: dateNow,
      file: file,
      authorName: authorName,
    );
    return res;
  }

  Future<String> deleteColoda({
    required String docId,
  }) async {
    String res = await colodaMethods.deleteColoda(
      docId: docId,
    );
    return res;
  }

  Future<List<ColodaAll>> getAllColods({
    required String searchText,
  }) async {
    return await colodaMethods.getAllColods(
      seatchText: searchText,
    );
  }

  Future<List<ColodaAll>> getColodsForUser({required String uid}) async {
    return await colodaMethods.getColodsForUser(uid: uid);
  }

  Future<List<Coloda>> getMainColods() async {
    return await colodaMethods.getMainColods();
  }
}
