import 'package:movies/domain/movie/model/movie.dart';

abstract class MovieUseCase {
  Future<List<Movie>> getNowPlayingMovies(int page);
}
