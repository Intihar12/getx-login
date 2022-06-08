// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

class Welcome {
  Welcome({
    this.data,
    this.message,
    this.accessToken,
    this.status,
  });

  Data ?data;
  String ?message;
  String ?accessToken;
  bool ?status;

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    data: Data.fromJson(json["data"]),
    message: json["message"],
    accessToken: json["access_token"],
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "data": data!.toJson(),
    "message": message,
    "access_token": accessToken,
    "status": status,
  };
}

class Data {
  Data({
    this.id,
    this.fName,
    this.homeTelephone,
    this.dateOfBirth,
    this.paTrainingAvailabilityAt,
    this.dbsFrontImage,
    this.dbsBackImage,
    this.paOnlineStatus,
  });

  int ?id;
  String ?fName;
  String ?homeTelephone;
  String ?dateOfBirth;
  DateTime? paTrainingAvailabilityAt;
  String ?dbsFrontImage;
  String ?dbsBackImage;
  String ?paOnlineStatus;

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    fName: json["f_name"],
    homeTelephone: json["home_telephone"],
    dateOfBirth: json["date_of_birth"],
    paTrainingAvailabilityAt: DateTime.parse(json["pa_training_availability_at"]),
    dbsFrontImage: json["dbs_front_image"],
    dbsBackImage: json["dbs_back_image"],
    paOnlineStatus: json["pa_online_status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "f_name": fName,
    "home_telephone": homeTelephone,
    "date_of_birth": dateOfBirth,
    "pa_training_availability_at": paTrainingAvailabilityAt!.toIso8601String(),
    "dbs_front_image": dbsFrontImage,
    "dbs_back_image": dbsBackImage,
    "pa_online_status": paOnlineStatus,
  };
}
