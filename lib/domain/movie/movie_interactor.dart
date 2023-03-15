import 'dart:async';

import 'package:movies/data/movie/movie_repository.dart';
import 'package:movies/domain/movie/mapper.dart';
import 'package:movies/domain/movie/model/movie.dart';
import 'package:movies/domain/movie/movie_use_case.dart';

class MovieInteractor extends MovieUseCase {
  MovieRepository movieRepository;

  MovieInteractor(this.movieRepository);

  @override
  Future<List<Movie>> getNowPlayingMovies(int page) {
    return movieRepository.getNowPlayingMovies(page).then((value) =>
        Future.value(
            (value.results?.map((e) => MovieMapper.mapMovie(e)) ?? List.empty())
                .toList()));
  }
}
