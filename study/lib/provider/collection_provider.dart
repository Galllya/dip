import 'dart:typed_data';
import 'package:study/models/collection.dart';
import 'package:study/models/coloda/coloda.dart';
import 'package:study/resourses/collection_methods.dart';

class CollectionProvider {
  final CollectionMethods collectionMethods = CollectionMethods();

  Future<String> putCollection({
    required Collection collection,
    Uint8List? file,
  }) async {
    String res = await collectionMethods.putCollection(
      collection: collection,
      file: file,
    );
    return res;
  }

  Future<List<Collection>> getUserCollections(
      {String? searchText, bool isTagsSearch = true}) async {
    return await collectionMethods.getUserCollections(
      seatchText: searchText,
      isTagsSearch: isTagsSearch,
    );
  }

  Future<Collection> getColodDetail({
    required String collectionId,
  }) async {
    return await collectionMethods.getUserCollection(
      collectionId: collectionId,
    );
  }

  Future<String> deleteCollection({
    required String docId,
  }) async {
    String res = await collectionMethods.deleteCollection(
      docId: docId,
    );
    return res;
  }

  Future<List<Coloda>> getColodsInCollection({
    required List<String> colodsId,
  }) async {
    return await collectionMethods.getColodsInCollection(colodsId: colodsId);
  }

  Future<String> updateCollection({
    required Collection collection,
    Uint8List? file,
  }) async {
    String res = await collectionMethods.updateCollection(
      file: file,
      collection: collection,
    );
    return res;
  }
}
