import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:study/models/coloda/card.dart' as model;

class ColodaAll {
  final String? imageURL;
  final String? name;
  final String? description;
  final String? uid;
  final List<model.Card>? cards;
  final DateTime? dateCreate;
  final bool? takeMyHaveAuthour;
  final List<String>? tags;
  final String? colodId;
  final String? authorName;

  const ColodaAll({
    this.imageURL,
    this.name,
    this.description,
    this.uid,
    this.cards,
    this.dateCreate,
    this.tags,
    this.takeMyHaveAuthour,
    this.colodId,
    this.authorName,
  });

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> carsss = [];
    for (var element in cards!) {
      carsss.add(
        element.toJson(),
      );
    }

    final Map<String, dynamic> res = {
      "imageURL": imageURL,
      "name": name,
      "description": description,
      "uid": uid,
      "cards": carsss,
      "dateCreate": Timestamp.fromDate(dateCreate!),
      "takeMyHaveAuthour": takeMyHaveAuthour,
      "tags": tags,
      "colodId": colodId,
      "authorName": authorName,
    };
    return res;
  }

  static ColodaAll fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    final List<model.Card> res = [];

    for (var element in (snapshot["cards"].cast<Map<String, dynamic>>()
        as List<Map<String, dynamic>>)) {
      res.add(model.Card(
        definition: element['definition'],
        term: element['term'],
      ));
    }
    List<String> tagsAsList = [];

    for (var element in (snapshot["tags"] as List<dynamic>)) {
      tagsAsList.add(element);
    }

    return ColodaAll(
      imageURL: snapshot["imageURL"] as String,
      name: snapshot["name"] as String,
      description: snapshot["description"] as String,
      uid: snapshot["uid"] as String,
      cards: res,
      dateCreate: (snapshot["dateCreate"] as Timestamp).toDate(),
      takeMyHaveAuthour: snapshot["takeMyHaveAuthour"] as bool,
      tags: tagsAsList,
      colodId: snapshot["colodId"] as String,
      authorName: snapshot["authorName"] as String,
    );
  }
}
