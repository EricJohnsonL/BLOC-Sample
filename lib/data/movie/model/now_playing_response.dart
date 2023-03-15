import 'package:freezed_annotation/freezed_annotation.dart';

import 'dates_response.dart';
import 'movie_response.dart';

part 'now_playing_response.freezed.dart';

part 'now_playing_response.g.dart';

@freezed
class NowPlayingResponse with _$NowPlayingResponse {

  @JsonSerializable(
    checked: true,
    fieldRename: FieldRename.none,
  )
  factory NowPlayingResponse({
    @JsonKey(name: 'dates') DatesResponse? dates,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'results') List<MovieResponse>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
}) = _NowPlayingResponse;

  factory NowPlayingResponse.fromJson(Map<String, dynamic> json) =>
      _$NowPlayingResponseFromJson(json);
}
