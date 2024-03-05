// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReportImpl _$$ReportImplFromJson(Map<String, dynamic> json) => _$ReportImpl(
      reportId: json['reportId'] as String,
      reportType: $enumDecode(_$ReportTypeEnumMap, json['reportType']),
      date: DateTime.parse(json['date'] as String),
      content: json['content'] as String,
    );

Map<String, dynamic> _$$ReportImplToJson(_$ReportImpl instance) =>
    <String, dynamic>{
      'reportId': instance.reportId,
      'reportType': _$ReportTypeEnumMap[instance.reportType]!,
      'date': instance.date.toIso8601String(),
      'content': instance.content,
    };

const _$ReportTypeEnumMap = {
  ReportType.externalWithdrawals: 'externalWithdrawals',
  ReportType.customerTransactions: 'customerTransactions',
};
