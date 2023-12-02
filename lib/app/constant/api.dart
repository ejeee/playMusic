import 'package:http/http.dart' as http;

class SpotifyApi {
  static const String baseUrl = "https://spotify23.p.rapidapi.com/recommendations/"; // Ganti dengan URL sesuai dokumentasi Spotify API
  static const String apiKey = "f97db20020mshac9f78c8a39ea86p194a67jsnd61f92b7bee2"; // Ganti dengan API Key Anda

  static Future<http.Response> getSomeData() async {
    final response = await http.get(
      Uri.parse('$baseUrl/some-endpoint'),
      headers: {'X-RapidAPI-Key': apiKey},
    );

    return response;
  }
}
