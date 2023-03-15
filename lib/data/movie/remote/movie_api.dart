import 'package:movies/data/movie/model/now_playing_response.dart';
import 'package:movies/data/movie/remote/movie_api_client.dart';

class MovieApi implements MovieApiClient {
  final MovieApiClient _apiClient;

  MovieApi(this._apiClient);

  @override
  Future<NowPlayingResponse> getNowPlayingMovies(int page) {
    return _apiClient.getNowPlayingMovies(page);
  }
}
