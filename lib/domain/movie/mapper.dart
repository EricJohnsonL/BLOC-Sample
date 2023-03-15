import 'package:movies/base/credentials.dart';
import 'package:movies/data/movie/model/movie_response.dart';

import 'model/movie.dart';

class MovieMapper {
  static Movie mapMovie(MovieResponse response) {
    return Movie(
      backdropPath: _getImageUrl(response.backdropPath),
      id: response.id ?? 0,
      overview: response.overview ?? '',
      popularity: response.popularity ?? 0.0,
      posterPath: _getImageUrl(response.posterPath),
      releaseDate: response.releaseDate ?? '',
      title: response.title ?? '',
    );
  }

  static String _getImageUrl(String? url) {
    if (url != null) {
      return Credentials.imageUrl + url;
    }
    return '';
  }
}
