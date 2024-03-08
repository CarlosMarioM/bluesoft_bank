import 'dart:convert';

import 'package:bluesoft_bank/core/di/di.dart';
import 'package:bluesoft_bank/repository/interface/i_account_repository.dart';
import 'package:bluesoft_bank/core/models/account/account.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:bluesoft_bank/utils/ui_event.dart';
import 'package:bloc/bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final IAccountRepository _homeRepository;
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
              getIt<SharedPreferences>()
                  .setString("accounts", jsonEncode(accountsOrFail));
              emit(
                state.copyWith(
                  accounts: UiEvent(accountsOrFail),
                  isLoading: false,
                  totalBalance: total,
                ),
              );
            } catch (_) {
              emit(
                state.copyWith(error: UiEvent.nothing, isLoading: false),
              );
            }
          },
          logout: () async => emit(
            state.copyWith(logout: UiEvent.nothing),
          ),
          navigateTransactions: (clientId) async => emit(
            state.copyWith(
              navigateTransactions: UiEvent(
                state.accounts!.peek(),
              ),
            ),
          ),
        );
      },
    );
  }
}
