enum ReportType {
  externalWithdrawals("external_withdrawals"),
  customerTransactions("Customer Transactions");

  final String value;
  const ReportType(this.value);
}
