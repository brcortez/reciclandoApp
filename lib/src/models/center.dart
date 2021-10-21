import 'dart:convert';

CollectionCenter collectionCenterFromJson(String str) =>
    CollectionCenter.fromJson(json.decode(str));

String collectionCenterToJson(CollectionCenter data) =>
    json.encode(data.toJson());

class CollectionCenter {
  CollectionCenter({
    required this.id,
    required this.nameCollectionCenter,
    required this.ruc,
    required this.phoneCollectionCenter,
    required this.addressCollectionCenter,
    required this.sessionToken,
  });

  String id;
  String nameCollectionCenter;
  String ruc;
  String phoneCollectionCenter;
  String addressCollectionCenter;
  String sessionToken;

  factory CollectionCenter.fromJson(Map<String, dynamic> json) =>
      CollectionCenter(
        id: json["id"],
        nameCollectionCenter: json["nameCollectionCenter"],
        ruc: json["ruc"],
        phoneCollectionCenter: json["phoneCollectionCenter"],
        addressCollectionCenter: json["addressCollectionCenter"],
        sessionToken: json["session_token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nameCollectionCenter": nameCollectionCenter,
        "ruc": ruc,
        "phoneCollectionCenter": phoneCollectionCenter,
        "addressCollectionCenter": addressCollectionCenter,
        "session_token": sessionToken,
      };
}
