import 'dart:typed_data';
import 'package:study/models/collection.dart';
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
}
