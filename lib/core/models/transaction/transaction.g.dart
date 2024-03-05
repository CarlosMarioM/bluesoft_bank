// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      transactionId: json['transactionId'] as String,
      transactionType:
          $enumDecode(_$TransactionTypeEnumMap, json['transactionType']),
      value: (json['value'] as num).toDouble(),
      date: DateTime.parse(json['date'] as String),
      accountId: json['accountId'] as String,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'transactionId': instance.transactionId,
      'transactionType': _$TransactionTypeEnumMap[instance.transactionType]!,
      'value': instance.value,
      'date': instance.date.toIso8601String(),
      'accountId': instance.accountId,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.consigment: 'consigment',
  TransactionType.withdrawal: 'withdrawal',
};
