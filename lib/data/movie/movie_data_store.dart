import 'package:movies/base/error_handler.dart';
import 'package:movies/data/movie/model/now_playing_response.dart';
import 'package:movies/data/movie/movie_repository.dart';
import 'package:movies/data/movie/remote/movie_api.dart';

class MovieDataStore extends MovieRepository {
  final MovieApi _movieApi;

  MovieDataStore(this._movieApi);

  @override
  Future<NowPlayingResponse> getNowPlayingMovies(int page) {
    return _movieApi.getNowPlayingMovies(page).then((response) => response,
        onError: (error) {
      errorHandler(error);
    });
  }
}
