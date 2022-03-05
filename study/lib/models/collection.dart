import 'package:cloud_firestore/cloud_firestore.dart';

class Collection {
  final String? imageURL;
  final String? name;
  final String? description;
  final String? uid;
  final List<String>? colodsId;
  final DateTime? dateCreate;
  final List<String>? tags;
  final String? collectionId;

  const Collection({
    this.imageURL,
    this.name,
    this.description,
    this.uid,
    this.colodsId,
    this.dateCreate,
    this.tags,
    this.collectionId,
  });

  set addTags(bool addTags) {}

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> res = {
      "imageURL": imageURL,
      "name": name,
      "description": description,
      "uid": uid,
      "dateCreate": Timestamp.fromDate(dateCreate!),
      "colodsId": colodsId,
      "tags": tags,
      "collectionId": collectionId,
    };
    return res;
  }

  static Collection fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    List<String> tagsAsList = [];

    for (var element in (snapshot["tags"] as List<dynamic>)) {
      tagsAsList.add(element);
    }

    List<String> colodsAsList = [];

    for (var element in (snapshot["colodsId"] as List<dynamic>)) {
      colodsAsList.add(element);
    }
    return Collection(
      imageURL: snapshot["imageURL"] as String,
      name: snapshot["name"] as String,
      description: snapshot["description"] as String,
      uid: snapshot["uid"] as String,
      dateCreate: (snapshot["dateCreate"] as Timestamp).toDate(),
      tags: tagsAsList,
      colodsId: colodsAsList,
      collectionId: snapshot["collectionId"] as String,
    );
  }
}
