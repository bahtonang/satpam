import 'package:satpam/model/models.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';

class BahtonangApiServices {
  // String baseUrl = "http://36.93.18.9:81/satpam_api/public/";
  //final String baseUrl = "http://192.168.35.93/satpam/public/";

  Client client = Client();

  Future<UserLogin?> login(String? nama, String? pass) async {
    final respond = await client.post(
        Uri.parse("http://36.93.18.9:81/satpam/public/login"),
        body: ({"nama": nama, "pass": pass}));
    if (respond.statusCode == 200) {
      final data = UserLogin.fromJson(json.decode(respond.body)[0]);
      return data;
    } else {
      return null;
    }
  }

  // Future<List<Patroli>> getToday(String token) async {
  //   Map<String, String> header = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer $token'
  //   };
  //   final respond = await client.get(
  //     "$baseUrl/api/today",
  //     headers: header,
  //   );
  //   if (respond.statusCode == 200) {
  //     print(respond);
  //     return patroliFromJson(respond.body);
  //   } else {
  //     return [];
  //   }
  // }

  // Future<List<Patroli>> getPertgl(String tgl, String token) async {
  //   Map<String, String> header = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer $token'
  //   };
  //   final respond =
  //       await client.get("$baseUrl/api/perhari/$tgl", headers: header);
  //   if (respond.statusCode == 200) {
  //     return patroliFromJson(respond.body);
  //   } else {
  //     return [];
  //   }
  // }

  // Future<List<Patroli>> getPerjam(String token) async {
  //   Map<String, String> header = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer $token'
  //   };
  //   final respond = await client.get(
  //     "$baseUrl/api/perjam",
  //     headers: header,
  //   );

  //   if (respond.statusCode == 200) {
  //     return patroliFromJson(respond.body);
  //   } else {
  //     return [];
  //   }
  // }

  // Future<Keliling> scan(String nfc, String user, String token) async {
  //   Map<String, String> header = {
  //     'Content-type': 'application/json',
  //     'Accept': 'application/json',
  //     'Authorization': 'Bearer $token'
  //   };
  //   final respond = await client.post("$baseUrl/api/scan",
  //       headers: header, body: jsonEncode({"nfc": nfc, "user": user}));
  //   if (respond.statusCode == 200) {
  //     print(respond.body);
  //     final data = Keliling.fromJson(json.decode(respond.body)[0]);
  //     return data;
  //   } else {
  //     return null;
  //   }
  // }
}
