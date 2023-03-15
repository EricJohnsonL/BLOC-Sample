import 'package:freezed_annotation/freezed_annotation.dart';

part 'dates_response.g.dart';

part 'dates_response.freezed.dart';

@freezed
class DatesResponse with _$DatesResponse {
  @JsonSerializable(
    checked: true,
    fieldRename: FieldRename.none,
  )
  factory DatesResponse({
    @JsonKey(name: 'maximum') String? maximum,
    @JsonKey(name: 'minimum') String? minimum,
  }) = _DatesResponse;

  factory DatesResponse.fromJson(Map<String, dynamic> json) =>
      _$DatesResponseFromJson(json);
}
