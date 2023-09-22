import 'dart:convert';

Person personFromJson(String str) => Person.fromJson(json.decode(str));
String personToJson(Person data) => json.encode(data.toJson());

class Person {
  Person({
    required this.error,
    required this.message,
    required this.user,
    required this.accessToken,
  });

  bool error;
  String message;
  User user;
  String accessToken;

  factory Person.fromJson(Map<String, dynamic> json) => Person(
        error: json["error"],
        message: json["message"],
        user: User.fromJson(json["user"]),
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "message": message,
        "user": user.toJson(),
        "access_token": accessToken,
      };
}

class User {
  User({
    required this.pid,
    required this.pass,
  });

  String pid;
  String pass;

  factory User.fromJson(Map<String, dynamic> json) => User(
        pid: json["pid"],
        pass: json["nama"],
      );

  Map<String, dynamic> toJson() => {
        "pid": pid,
        "nama": pass,
      };
}
/* ------------------------------------------------------- */

class Patroli {
  String? tgl;
  String? kode;
  String? petugas;
  String? jam;
  String? lokasi;
  String? urut;

  Patroli(
      {this.tgl, this.kode, this.petugas, this.jam, this.lokasi, this.urut});

  factory Patroli.fromJson(Map<String, dynamic> json) {
    return Patroli(
        tgl: json['TGL'],
        petugas: json['PETUGAS'],
        kode: json['NFC'],
        urut: json['URUT'],
        lokasi: json['LOKASI'],
        jam: json['JAM']);
  }
  Map<String, dynamic> toJson() {
    return {
      "tgl": tgl,
      "petugas": petugas,
      "kode": kode,
      "urut": urut,
      "jam": jam,
      "lokasi": lokasi
    };
  }

  @override
  String toString() {
    return 'Patroli{ tgl : $tgl, petugas : $petugas,kode: $kode,urut:$urut,lokasi:$lokasi,jam:$jam}';
  }
}

List<Patroli> patroliFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Patroli>.from(data.map((item) => Patroli.fromJson(item)));
}

String patroliToJson(Patroli data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

/*-------------------------------------------------------------------------- */

class Keliling {
  String? tgl;
  String? kode;
  String? petugas;
  String? message;

  Keliling({this.tgl, this.kode, this.petugas, this.message});

  factory Keliling.fromJson(Map<String, dynamic> json) {
    return Keliling(
        tgl: json['tgl'],
        petugas: json['petugas'],
        kode: json['nfc'],
        message: json['MESSAGE']);
  }
  Map<String, dynamic> toJson() {
    return {"tgl": tgl, "petugas": petugas, "kode": kode, "message": message};
  }

  @override
  String toString() {
    return 'Keliling{ tgl : $tgl, petugas : $petugas,kode: $kode,message:$message}';
  }
}

List<Keliling> kelilingFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<Keliling>.from(data.map((item) => Keliling.fromJson(item)));
}

String kelilingToJson(Keliling data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
}

/*-------------------------------------------------------------------------- */
