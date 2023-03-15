// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dates_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DatesResponse _$$_DatesResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_DatesResponse',
      json,
      ($checkedConvert) {
        final val = _$_DatesResponse(
          maximum: $checkedConvert('maximum', (v) => v as String?),
          minimum: $checkedConvert('minimum', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$$_DatesResponseToJson(_$_DatesResponse instance) =>
    <String, dynamic>{
      'maximum': instance.maximum,
      'minimum': instance.minimum,
    };
