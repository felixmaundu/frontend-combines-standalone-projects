import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<Album> fetchAlbum() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token = prefs.getString("token");
  print(token);

  final response = await http.get(
    Uri.parse('http://localhost:5000/private'),
    headers: {"token": token as String},
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}

class Album {
  final String msg;

  Album({required this.msg});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      msg: json['msg'],
    );
  }
}
