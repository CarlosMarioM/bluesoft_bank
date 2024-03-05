// ignore_for_file: unused_result

import 'package:bloc/bloc.dart';
import 'package:bluesoft_bank/core/models/client/client.dart';
import 'package:bluesoft_bank/framework/repository/interface/i_login_repository.dart';
import 'package:bluesoft_bank/utils/results/results.dart';
import 'package:bluesoft_bank/utils/ui_event.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ILoginRepository _loginRepository;

  LoginBloc(this._loginRepository) : super(const LoginState()) {
    on<LoginEvent>(
      (event, emit) async {
        await event.when(
          login: (String user, String password) async {
            emit(state.copyWith(isLoading: true));
            final request = await _loginRepository.login(user, password);
            switch (request) {
              case Success(:final value):
                emit(state.copyWith(
                    navigateToHomePage: UiEvent(value), isLoading: false));
              case Failure():
                emit(state.copyWith(error: UiEvent.nothing, isLoading: false));
            }
          },
          register: register,
        );
      },
    );
  }

  register(event, emit) {}
}
