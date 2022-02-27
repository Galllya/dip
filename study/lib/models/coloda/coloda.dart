import 'package:cloud_firestore/cloud_firestore.dart';

class Coloda {
  final String? imageURL;
  final String? name;
  final String? uid;
  final int? cards;
  final String? colodId;
  final DateTime? dateCreate;
  final bool? showEvery;
  final bool? takeMyHaveAuthour;
  final List<String>? tags;

  const Coloda({
    this.imageURL,
    this.name,
    this.uid,
    this.cards,
    this.colodId,
    this.dateCreate,
    this.takeMyHaveAuthour,
    this.showEvery,
    this.tags,
  });

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> map2 = [{}];
    Map<String, dynamic> map = {};

    if (tags != null) {
      for (var element in tags!) {
        map['tag'] = element;
        map2.add(map);
      }
    }
    final Map<String, dynamic> res = {
      "imageURL": imageURL,
      "name": name,
      "uid": uid,
      "cards": cards,
      "colodId": colodId,
      "dateCreate": Timestamp.fromDate(dateCreate!),
      "showEvery": showEvery,
      "takeMyHaveAuthour": takeMyHaveAuthour,
      "tags": tags,
    };
    return res;
  }

  static Coloda fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    // List<String> normTags = [];
    // if (snapshot["tags"] != []) {
    //   (snapshot["tags"] as Map<String, dynamic>).forEach(
    //     (key, value) {
    //       normTags.add(value);
    //     },
    //   );
    // }

    List<String> tagsAsList = [];

    for (var element in (snapshot["tags"] as List<dynamic>)) {
      tagsAsList.add(element);
    }

    return Coloda(
      imageURL: snapshot["imageURL"] as String,
      name: snapshot["name"] as String,
      uid: snapshot["uid"] as String,
      cards: snapshot["cards"] as int,
      colodId: snapshot["colodId"] as String,
      dateCreate: (snapshot["dateCreate"] as Timestamp).toDate(),
      showEvery: snapshot["showEvery"] as bool,
      takeMyHaveAuthour: snapshot["takeMyHaveAuthour"] as bool,
      tags: tagsAsList,
    );
  }
}
