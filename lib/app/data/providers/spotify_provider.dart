import 'dart:convert';
import 'package:flutter_application_1/app/models/article.dart'; // Sesuaikan dengan lokasi model Anda
import 'package:http/http.dart' as http;

class SpotifyProvider {
  static const String baseUrl = "https://api.spotify.com/v1/recommendations"; // Ganti dengan URL sesuai dokumentasi Spotify API

  static Future<List<Article>> fetchRecommendedSongs() async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/recommended-songs'), // Ganti dengan endpoint yang sesuai
        // Tambahkan header jika diperlukan, seperti API Key
      );

      if (response.statusCode == 200) {
        // Ganti dengan cara mengurai data sesuai dengan struktur model Anda
        // Contoh menggunakan package `dart:convert`
        final List<dynamic> data = json.decode(response.body);
        final List<Article> songs = data.map((item) => Article.fromJson(item)).toList();
        return songs;
      } else {
        throw Exception('Failed to load data');
      }
    } catch (error) {
      rethrow;
    }
  }
}
