import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';
part 'client.g.dart';

@Freezed(toJson: true)
class Client with _$Client {
  const factory Client(
      {required String id,
      required String name,
      required String city,
      required String uid}) = _Client;

  factory Client.fromJson(Map<String, dynamic> json) => _$ClientFromJson(json);
}
