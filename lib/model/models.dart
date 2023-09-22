import 'dart:convert';

class UserLogin {
  String nama;
  String pass;
  String akses;
  String token;

  UserLogin(
      {required this.nama,
      required this.pass,
      required this.akses,
      required this.token});

  factory UserLogin.fromJson(Map<String, dynamic> json) {
    return UserLogin(
        nama: json['NAMA'],
        pass: json['PASS'],
        token: json['TOKEN'],
        akses: json['AKSES']);
  }
  Map<String, dynamic> toJson() {
    return {"nama": nama, "pass": pass, "akses": akses, "token": token};
  }

  @override
  String toString() {
    return 'UserLogin{ nama : $nama, pass : $pass, akses : $akses,token:$token}';
  }
}

List<UserLogin> loginFromJson(String jsonData) {
  final data = json.decode(jsonData);
  return List<UserLogin>.from(data.map((item) => UserLogin.fromJson(item)));
}

String loginToJson(UserLogin data) {
  final jsonData = data.toJson();
  return json.encode(jsonData);
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
