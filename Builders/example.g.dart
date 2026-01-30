part of 'example.dart';

Person _$PersonFromJson(Map<String, dynamic> json) => Person(
  firstName: json['firstName'] as String,
  lastName: json['lastName'] as String,
  dateOfBirth: json['dateOfBirth'] == null
      ? null
      : DateTime.parse(json['dateOfBirth'] as String),
);

Map<String, dynamic> _$PersonToJson(Person instance) => <String, dynamic>{
  'firstName': instance.firstName,
  'lastName': instance.lastName,
  'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
};

const _$PersonJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2024-12/schema',
  'type': 'object',
  'properties': {
    'firstName': {'type': 'string'},
    'lastName': {'type': 'string'},
    'dateOfBirth': {'type': 'string', 'format': 'date-time'},
  },
  'required': ['firstName', 'lastName'],
};
