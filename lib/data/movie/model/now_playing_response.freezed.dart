// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'now_playing_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NowPlayingResponse _$NowPlayingResponseFromJson(Map<String, dynamic> json) {
  return _NowPlayingResponse.fromJson(json);
}

/// @nodoc
mixin _$NowPlayingResponse {
  @JsonKey(name: 'dates')
  DatesResponse? get dates => throw _privateConstructorUsedError;
  @JsonKey(name: 'page')
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieResponse>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int? get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int? get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NowPlayingResponseCopyWith<NowPlayingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NowPlayingResponseCopyWith<$Res> {
  factory $NowPlayingResponseCopyWith(
          NowPlayingResponse value, $Res Function(NowPlayingResponse) then) =
      _$NowPlayingResponseCopyWithImpl<$Res, NowPlayingResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dates') DatesResponse? dates,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'results') List<MovieResponse>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  $DatesResponseCopyWith<$Res>? get dates;
}

/// @nodoc
class _$NowPlayingResponseCopyWithImpl<$Res, $Val extends NowPlayingResponse>
    implements $NowPlayingResponseCopyWith<$Res> {
  _$NowPlayingResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as DatesResponse?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResponse>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DatesResponseCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesResponseCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NowPlayingResponseCopyWith<$Res>
    implements $NowPlayingResponseCopyWith<$Res> {
  factory _$$_NowPlayingResponseCopyWith(_$_NowPlayingResponse value,
          $Res Function(_$_NowPlayingResponse) then) =
      __$$_NowPlayingResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dates') DatesResponse? dates,
      @JsonKey(name: 'page') int? page,
      @JsonKey(name: 'results') List<MovieResponse>? results,
      @JsonKey(name: 'total_pages') int? totalPages,
      @JsonKey(name: 'total_results') int? totalResults});

  @override
  $DatesResponseCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$_NowPlayingResponseCopyWithImpl<$Res>
    extends _$NowPlayingResponseCopyWithImpl<$Res, _$_NowPlayingResponse>
    implements _$$_NowPlayingResponseCopyWith<$Res> {
  __$$_NowPlayingResponseCopyWithImpl(
      _$_NowPlayingResponse _value, $Res Function(_$_NowPlayingResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
    Object? totalResults = freezed,
  }) {
    return _then(_$_NowPlayingResponse(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as DatesResponse?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      results: freezed == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieResponse>?,
      totalPages: freezed == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int?,
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, fieldRename: FieldRename.none)
class _$_NowPlayingResponse implements _NowPlayingResponse {
  _$_NowPlayingResponse(
      {@JsonKey(name: 'dates') this.dates,
      @JsonKey(name: 'page') this.page,
      @JsonKey(name: 'results') final List<MovieResponse>? results,
      @JsonKey(name: 'total_pages') this.totalPages,
      @JsonKey(name: 'total_results') this.totalResults})
      : _results = results;

  factory _$_NowPlayingResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NowPlayingResponseFromJson(json);

  @override
  @JsonKey(name: 'dates')
  final DatesResponse? dates;
  @override
  @JsonKey(name: 'page')
  final int? page;
  final List<MovieResponse>? _results;
  @override
  @JsonKey(name: 'results')
  List<MovieResponse>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int? totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int? totalResults;

  @override
  String toString() {
    return 'NowPlayingResponse(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NowPlayingResponse &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NowPlayingResponseCopyWith<_$_NowPlayingResponse> get copyWith =>
      __$$_NowPlayingResponseCopyWithImpl<_$_NowPlayingResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NowPlayingResponseToJson(
      this,
    );
  }
}

abstract class _NowPlayingResponse implements NowPlayingResponse {
  factory _NowPlayingResponse(
          {@JsonKey(name: 'dates') final DatesResponse? dates,
          @JsonKey(name: 'page') final int? page,
          @JsonKey(name: 'results') final List<MovieResponse>? results,
          @JsonKey(name: 'total_pages') final int? totalPages,
          @JsonKey(name: 'total_results') final int? totalResults}) =
      _$_NowPlayingResponse;

  factory _NowPlayingResponse.fromJson(Map<String, dynamic> json) =
      _$_NowPlayingResponse.fromJson;

  @override
  @JsonKey(name: 'dates')
  DatesResponse? get dates;
  @override
  @JsonKey(name: 'page')
  int? get page;
  @override
  @JsonKey(name: 'results')
  List<MovieResponse>? get results;
  @override
  @JsonKey(name: 'total_pages')
  int? get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int? get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$_NowPlayingResponseCopyWith<_$_NowPlayingResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
