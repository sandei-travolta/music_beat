import 'package:flutter/services.dart';

class SpotifyAuthRepository {
  static const spotify_auth = MethodChannel('spotify_auth');
  Future<String?> getAuthToken()async{
    return await spotify_auth.invokeMethod('login');
  }
}