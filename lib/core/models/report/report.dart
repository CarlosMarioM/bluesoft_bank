import 'package:bluesoft_bank/core/enums/report_type.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'report.freezed.dart';
part 'report.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String reportId,
    required ReportType reportType,
    required DateTime date,
    required String content,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
