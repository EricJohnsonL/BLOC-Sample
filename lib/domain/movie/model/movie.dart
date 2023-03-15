import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    @Default('') String backdropPath,
    @Default(0) int id,
    @Default('') String overview,
    @Default(0.0) double popularity,
    @Default('') String posterPath ,
    @Default('') String releaseDate,
    @Default('') String title,
  }) = _Movie;
}
