// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieResponse _$$_MovieResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_MovieResponse',
      json,
      ($checkedConvert) {
        final val = _$_MovieResponse(
          adult: $checkedConvert('adult', (v) => v as bool?),
          backdropPath: $checkedConvert('backdrop_path', (v) => v as String?),
          genreIds: $checkedConvert('genre_ids',
              (v) => (v as List<dynamic>?)?.map((e) => e as int).toList()),
          id: $checkedConvert('id', (v) => v as int?),
          originalLanguage:
              $checkedConvert('original_language', (v) => v as String?),
          originalTitle: $checkedConvert('original_title', (v) => v as String?),
          overview: $checkedConvert('overview', (v) => v as String?),
          popularity:
              $checkedConvert('popularity', (v) => (v as num?)?.toDouble()),
          posterPath: $checkedConvert('poster_path', (v) => v as String?),
          releaseDate: $checkedConvert('release_date', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          video: $checkedConvert('video', (v) => v as bool?),
          voteAverage:
              $checkedConvert('vote_average', (v) => (v as num?)?.toDouble()),
          voteCount: $checkedConvert('vote_count', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'backdropPath': 'backdrop_path',
        'genreIds': 'genre_ids',
        'originalLanguage': 'original_language',
        'originalTitle': 'original_title',
        'posterPath': 'poster_path',
        'releaseDate': 'release_date',
        'voteAverage': 'vote_average',
        'voteCount': 'vote_count'
      },
    );

Map<String, dynamic> _$$_MovieResponseToJson(_$_MovieResponse instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
