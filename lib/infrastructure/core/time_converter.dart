import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';


class ServerTimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const ServerTimestampConverter();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? date) => date==null?null:Timestamp.fromDate(date);
}

class ServerTimestampFieldValueConverter implements JsonConverter<FieldValue?, Object?> {
  const ServerTimestampFieldValueConverter();

  @override
  FieldValue? fromJson(Object? json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object? toJson(FieldValue? fieldValue) => fieldValue;
}