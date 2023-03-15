// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NowPlayingResponse _$$_NowPlayingResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_NowPlayingResponse',
      json,
      ($checkedConvert) {
        final val = _$_NowPlayingResponse(
          dates: $checkedConvert(
              'dates',
              (v) => v == null
                  ? null
                  : DatesResponse.fromJson(v as Map<String, dynamic>)),
          page: $checkedConvert('page', (v) => v as int?),
          results: $checkedConvert(
              'results',
              (v) => (v as List<dynamic>?)
                  ?.map(
                      (e) => MovieResponse.fromJson(e as Map<String, dynamic>))
                  .toList()),
          totalPages: $checkedConvert('total_pages', (v) => v as int?),
          totalResults: $checkedConvert('total_results', (v) => v as int?),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalPages': 'total_pages',
        'totalResults': 'total_results'
      },
    );

Map<String, dynamic> _$$_NowPlayingResponseToJson(
        _$_NowPlayingResponse instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
