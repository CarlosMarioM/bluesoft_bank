import 'package:bluesoft_bank/framework/repository/interface/i_home_repository.dart';
import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:bluesoft_bank/utils/ui_event.dart';
import 'package:bloc/bloc.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IHomeRepository _homeRepository;
  HomeBloc(this._homeRepository) : super(const HomeState()) {
    on<HomeEvent>(
      (event, emit) async {
        await event.when(
          initial: (clientId) async {
            emit(state.copyWith(isLoading: true));
            try {
              final request = await _homeRepository.fetchAccounts(clientId);
              final accountsOrFail = switch (request) {
                Success(:final value) => value,
                Failure() => throw Exception()
              };
              num total = Account.getCurrentBalance(request.value);
              emit(
                state.copyWith(
                  accounts: UiEvent(accountsOrFail),
                  isLoading: false,
                  totalBalance: total,
                ),
              );
            } catch (_) {
              emit(state.copyWith(error: UiEvent.nothing, isLoading: false));
            }
          },
        );
      },
    );
  }
}
