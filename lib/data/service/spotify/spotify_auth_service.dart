import 'package:music_beat/data/repositories/spotify/spotify_auth_repository.dart';

class SpotifyAuthService {
  final SpotifyAuthRepository spotifyRepositories;

  SpotifyAuthService({required this.spotifyRepositories});
  void loginUser(){
    Future<String?> token=spotifyRepositories.getAuthToken();
    print(token);
  }
}