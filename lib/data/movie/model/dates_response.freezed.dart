// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dates_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DatesResponse _$DatesResponseFromJson(Map<String, dynamic> json) {
  return _DatesResponse.fromJson(json);
}

/// @nodoc
mixin _$DatesResponse {
  @JsonKey(name: 'maximum')
  String? get maximum => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimum')
  String? get minimum => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DatesResponseCopyWith<DatesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesResponseCopyWith<$Res> {
  factory $DatesResponseCopyWith(
          DatesResponse value, $Res Function(DatesResponse) then) =
      _$DatesResponseCopyWithImpl<$Res, DatesResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maximum') String? maximum,
      @JsonKey(name: 'minimum') String? minimum});
}

/// @nodoc
class _$DatesResponseCopyWithImpl<$Res, $Val extends DatesResponse>
    implements $DatesResponseCopyWith<$Res> {
  _$DatesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_value.copyWith(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DatesResponseCopyWith<$Res>
    implements $DatesResponseCopyWith<$Res> {
  factory _$$_DatesResponseCopyWith(
          _$_DatesResponse value, $Res Function(_$_DatesResponse) then) =
      __$$_DatesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maximum') String? maximum,
      @JsonKey(name: 'minimum') String? minimum});
}

/// @nodoc
class __$$_DatesResponseCopyWithImpl<$Res>
    extends _$DatesResponseCopyWithImpl<$Res, _$_DatesResponse>
    implements _$$_DatesResponseCopyWith<$Res> {
  __$$_DatesResponseCopyWithImpl(
      _$_DatesResponse _value, $Res Function(_$_DatesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = freezed,
    Object? minimum = freezed,
  }) {
    return _then(_$_DatesResponse(
      maximum: freezed == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as String?,
      minimum: freezed == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(checked: true, fieldRename: FieldRename.none)
class _$_DatesResponse implements _DatesResponse {
  _$_DatesResponse(
      {@JsonKey(name: 'maximum') this.maximum,
      @JsonKey(name: 'minimum') this.minimum});

  factory _$_DatesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_DatesResponseFromJson(json);

  @override
  @JsonKey(name: 'maximum')
  final String? maximum;
  @override
  @JsonKey(name: 'minimum')
  final String? minimum;

  @override
  String toString() {
    return 'DatesResponse(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DatesResponse &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DatesResponseCopyWith<_$_DatesResponse> get copyWith =>
      __$$_DatesResponseCopyWithImpl<_$_DatesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DatesResponseToJson(
      this,
    );
  }
}

abstract class _DatesResponse implements DatesResponse {
  factory _DatesResponse(
      {@JsonKey(name: 'maximum') final String? maximum,
      @JsonKey(name: 'minimum') final String? minimum}) = _$_DatesResponse;

  factory _DatesResponse.fromJson(Map<String, dynamic> json) =
      _$_DatesResponse.fromJson;

  @override
  @JsonKey(name: 'maximum')
  String? get maximum;
  @override
  @JsonKey(name: 'minimum')
  String? get minimum;
  @override
  @JsonKey(ignore: true)
  _$$_DatesResponseCopyWith<_$_DatesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
