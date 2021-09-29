import 'dart:convert';

import 'package:grocery_store/model/album.dart';
import 'package:http/http.dart' as http;

class AlbumService {
  Future<Album> fetchAlbum(int id) async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/$id'));

    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Deu erro!!');
    }
  }

  Future<List<Album>> fetchAllAlbums() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      Iterable list = jsonDecode(response.body);
      return list.map((album) => Album.fromJson(album)).toList();
    } else {
      throw Exception('Deu erro!!');
    }
  }

  Future<Album> createAlbum(Album album) async {
    final response = await http.post(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
      headers: {'Content-Type': 'application/json; charset=UTF-8'},
      body: jsonEncode(album.toJson()),
    );

    if (response.statusCode == 201) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Deu erro no post');
    }
  }
}
