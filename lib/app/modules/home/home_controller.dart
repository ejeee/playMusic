import 'package:flutter_application_1/app/data/providers/spotify_provider.dart';
import 'package:flutter_application_1/app/models/article.dart';
import 'package:get/get.dart';// Sesuaikan dengan lokasi provider API Anda

class HomeController extends GetxController {
  var recommendedSongs = <Article>[].obs; // Sesuaikan dengan model Anda

  @override
  void onInit() {
    super.onInit();
    fetchDataFromApi();
  }

  void fetchDataFromApi() async {
    try {
      // Ganti dengan metode yang sesuai dari Spotify API provider
      final songs = await SpotifyProvider.fetchRecommendedSongs();
      recommendedSongs.assignAll(songs);
    } catch (error) {
      print('Error: $error');
    }
  }
}
