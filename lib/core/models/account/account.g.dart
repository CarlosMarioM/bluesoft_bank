// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountImpl _$$AccountImplFromJson(Map<String, dynamic> json) =>
    _$AccountImpl(
      id: json['id'] as String,
      type: $enumDecode(_$AccountTypeEnumMap, json['type']),
      balance: json['balance'] as num,
      clientId: json['clientId'] as String,
    );

Map<String, dynamic> _$$AccountImplToJson(_$AccountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$AccountTypeEnumMap[instance.type]!,
      'balance': instance.balance,
      'clientId': instance.clientId,
    };

const _$AccountTypeEnumMap = {
  AccountType.current: 'current',
  AccountType.savings: 'savings',
};
