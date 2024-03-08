import 'package:bluesoft_bank/repository/interface/i_transaction_repository.dart';
import 'package:bluesoft_bank/core/models/transaction/transaction.dart';
import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:bluesoft_bank/utils/ui_event.dart';
import 'package:bloc/bloc.dart';

part 'transaction_event.dart';
part 'transaction_state.dart';
part 'transaction_bloc.freezed.dart';

class TransactionBloc extends Bloc<TransactionEvent, TransactionState> {
  final ITransactionRepository _transactionRepository;

  TransactionBloc(this._transactionRepository)
      : super(const TransactionState()) {
    on<TransactionEvent>(
      (event, emit) async {
        await event.when(
          started: (List<Account> accounts) async {
            emit(state.copyWith(isLoading: true));
            final List<Transaction> transactions = [];
            final List<Future> futures = [];

            for (Account account in accounts) {
              futures.add(_transactionRepository.fetchTransactions(account.id));
            }

            final List results = await Future.wait(futures);

            if (results.isNotEmpty &&
                results.any((element) => element is Success)) {
              results.removeWhere((element) => element is Failure);

              for (Success result in results) {
                transactions.addAll(result.value);
              }
            } else {
              emit(state.copyWith(error: UiEvent.nothing));
              return;
            }
            emit(state.copyWith(transactions: transactions, isLoading: false));
          },
          navigateBack: () async => emit(
            state.copyWith(navigateBack: UiEvent.nothing),
          ),
        );
      },
    );
  }
  @override
  void add(TransactionEvent event) {
    if (!isClosed) {
      super.add(event);
    }
  }
}
